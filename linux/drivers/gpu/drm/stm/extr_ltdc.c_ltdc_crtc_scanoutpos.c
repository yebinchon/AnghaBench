
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltdc_device {int regs; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {int dev; struct ltdc_device* dev_private; } ;
typedef int ktime_t ;


 int AWCR_AAH ;
 int BPCR_AVBP ;
 int CPSR_CYPOS ;
 int LTDC_AWCR ;
 int LTDC_BPCR ;
 int LTDC_CPSR ;
 int LTDC_TWCR ;
 int TWCR_TOTALH ;
 int ktime_get () ;
 scalar_t__ pm_runtime_active (int ) ;
 int reg_read (int ,int ) ;

bool ltdc_crtc_scanoutpos(struct drm_device *ddev, unsigned int pipe,
     bool in_vblank_irq, int *vpos, int *hpos,
     ktime_t *stime, ktime_t *etime,
     const struct drm_display_mode *mode)
{
 struct ltdc_device *ldev = ddev->dev_private;
 int line, vactive_start, vactive_end, vtotal;

 if (stime)
  *stime = ktime_get();
 if (pm_runtime_active(ddev->dev)) {
  line = reg_read(ldev->regs, LTDC_CPSR) & CPSR_CYPOS;
  vactive_start = reg_read(ldev->regs, LTDC_BPCR) & BPCR_AVBP;
  vactive_end = reg_read(ldev->regs, LTDC_AWCR) & AWCR_AAH;
  vtotal = reg_read(ldev->regs, LTDC_TWCR) & TWCR_TOTALH;

  if (line > vactive_end)
   *vpos = line - vtotal - vactive_start;
  else
   *vpos = line - vactive_start;
 } else {
  *vpos = 0;
 }

 *hpos = 0;

 if (etime)
  *etime = ktime_get();

 return 1;
}
