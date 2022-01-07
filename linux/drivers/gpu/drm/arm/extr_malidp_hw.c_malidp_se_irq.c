
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct malidp_irq_map {int irq_mask; int err_mask; int vsync_irq; } ;
struct malidp_hw_device {int mw_state; scalar_t__ pm_suspended; struct malidp_hw* hw; } ;
struct TYPE_3__ {int vsync_irq; } ;
struct TYPE_4__ {TYPE_1__ dc_irq_map; scalar_t__ dc_base; scalar_t__ se_base; struct malidp_irq_map se_irq_map; } ;
struct malidp_hw {int (* set_config_valid ) (struct malidp_hw_device*,int) ;TYPE_2__ map; int (* disable_memwrite ) (struct malidp_hw_device*) ;} ;
struct malidp_drm {int config_valid; int mw_connector; int crtc; int se_errors; struct malidp_hw_device* dev; } ;
struct drm_device {struct malidp_drm* dev_private; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MALIDP_CONFIG_START ;
 scalar_t__ MALIDP_REG_MASKIRQ ;
 scalar_t__ MALIDP_REG_STATUS ;
 int MALIDP_SE_BLOCK ;
 int MW_NOT_ENABLED ;




 int atomic_read (int *) ;
 int drm_crtc_vblank_count (int *) ;
 int drm_writeback_signal_completion (int *,int ) ;
 int malidp_error (struct malidp_drm*,int *,int,int ) ;
 int malidp_hw_clear_irq (struct malidp_hw_device*,int ,int) ;
 int malidp_hw_read (struct malidp_hw_device*,scalar_t__) ;
 int stub1 (struct malidp_hw_device*) ;
 int stub2 (struct malidp_hw_device*,int) ;

__attribute__((used)) static irqreturn_t malidp_se_irq(int irq, void *arg)
{
 struct drm_device *drm = arg;
 struct malidp_drm *malidp = drm->dev_private;
 struct malidp_hw_device *hwdev = malidp->dev;
 struct malidp_hw *hw = hwdev->hw;
 const struct malidp_irq_map *se = &hw->map.se_irq_map;
 u32 status, mask;






 if (hwdev->pm_suspended)
  return IRQ_NONE;

 status = malidp_hw_read(hwdev, hw->map.se_base + MALIDP_REG_STATUS);
 if (!(status & (se->irq_mask | se->err_mask)))
  return IRQ_NONE;






 mask = malidp_hw_read(hwdev, hw->map.se_base + MALIDP_REG_MASKIRQ);
 status &= mask;

 if (status & se->vsync_irq) {
  switch (hwdev->mw_state) {
  case 131:
   drm_writeback_signal_completion(&malidp->mw_connector, 0);
   break;
  case 128:
   drm_writeback_signal_completion(&malidp->mw_connector, 0);

   hwdev->mw_state = MW_NOT_ENABLED;
   break;
  case 130:
   drm_writeback_signal_completion(&malidp->mw_connector, 0);

  case 129:

   hw->disable_memwrite(hwdev);





   status = malidp_hw_read(hwdev, hw->map.dc_base + MALIDP_REG_STATUS);
   if ((atomic_read(&malidp->config_valid) != MALIDP_CONFIG_START) ||
       (status & hw->map.dc_irq_map.vsync_irq))
    hw->set_config_valid(hwdev, 1);
   break;
  }
 }

 malidp_hw_clear_irq(hwdev, MALIDP_SE_BLOCK, status);

 return IRQ_HANDLED;
}
