
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct malidp_irq_map {int irq_mask; int err_mask; int vsync_irq; } ;
struct malidp_hw_device {scalar_t__ pm_suspended; struct malidp_hw* hw; } ;
struct TYPE_6__ {int vsync_irq; } ;
struct TYPE_7__ {TYPE_1__ dc_irq_map; scalar_t__ dc_base; struct malidp_irq_map de_irq_map; } ;
struct malidp_hw {TYPE_2__ map; } ;
struct TYPE_8__ {scalar_t__ enabled; } ;
struct malidp_drm {TYPE_3__ crtc; int de_errors; int config_valid; int * event; struct malidp_hw_device* dev; } ;
struct drm_device {int event_lock; struct malidp_drm* dev_private; } ;
typedef scalar_t__ irqreturn_t ;


 scalar_t__ IRQ_HANDLED ;
 scalar_t__ IRQ_NONE ;
 scalar_t__ IRQ_WAKE_THREAD ;
 int MALIDP_CONFIG_VALID_DONE ;
 int MALIDP_DC_BLOCK ;
 int MALIDP_DE_BLOCK ;
 scalar_t__ MALIDP_REG_MASKIRQ ;
 scalar_t__ MALIDP_REG_STATUS ;
 int atomic_set (int *,int ) ;
 int drm_crtc_handle_vblank (TYPE_3__*) ;
 int drm_crtc_send_vblank_event (TYPE_3__*,int *) ;
 int drm_crtc_vblank_count (TYPE_3__*) ;
 int malidp_error (struct malidp_drm*,int *,int,int ) ;
 int malidp_hw_clear_irq (struct malidp_hw_device*,int ,int) ;
 int malidp_hw_read (struct malidp_hw_device*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t malidp_de_irq(int irq, void *arg)
{
 struct drm_device *drm = arg;
 struct malidp_drm *malidp = drm->dev_private;
 struct malidp_hw_device *hwdev;
 struct malidp_hw *hw;
 const struct malidp_irq_map *de;
 u32 status, mask, dc_status;
 irqreturn_t ret = IRQ_NONE;

 hwdev = malidp->dev;
 hw = hwdev->hw;
 de = &hw->map.de_irq_map;






 if (hwdev->pm_suspended)
  return IRQ_NONE;


 dc_status = malidp_hw_read(hwdev, hw->map.dc_base + MALIDP_REG_STATUS);
 if (dc_status & hw->map.dc_irq_map.vsync_irq) {
  malidp_hw_clear_irq(hwdev, MALIDP_DC_BLOCK, dc_status);

  if (malidp->event != ((void*)0)) {
   spin_lock(&drm->event_lock);
   drm_crtc_send_vblank_event(&malidp->crtc, malidp->event);
   malidp->event = ((void*)0);
   spin_unlock(&drm->event_lock);
  }
  atomic_set(&malidp->config_valid, MALIDP_CONFIG_VALID_DONE);
  ret = IRQ_WAKE_THREAD;
 }

 status = malidp_hw_read(hwdev, MALIDP_REG_STATUS);
 if (!(status & de->irq_mask))
  return ret;

 mask = malidp_hw_read(hwdev, MALIDP_REG_MASKIRQ);

 status &= (mask | de->err_mask);
 if ((status & de->vsync_irq) && malidp->crtc.enabled)
  drm_crtc_handle_vblank(&malidp->crtc);







 malidp_hw_clear_irq(hwdev, MALIDP_DE_BLOCK, status);

 return (ret == IRQ_NONE) ? IRQ_HANDLED : ret;
}
