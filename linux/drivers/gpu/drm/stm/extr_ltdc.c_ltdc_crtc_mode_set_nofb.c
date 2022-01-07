
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct videomode {int hactive; int vactive; int hfront_porch; int hback_porch; int hsync_len; int vfront_porch; int vback_porch; int vsync_len; int flags; } ;
struct ltdc_device {int regs; } ;
struct drm_display_mode {int name; } ;
struct drm_device {int dev; } ;
struct TYPE_4__ {int id; } ;
struct drm_crtc {TYPE_2__ base; TYPE_1__* state; struct drm_device* dev; } ;
struct TYPE_3__ {struct drm_display_mode adjusted_mode; } ;


 int AWCR_AAH ;
 int AWCR_AAW ;
 int BPCR_AHBP ;
 int BPCR_AVBP ;
 int DISPLAY_FLAGS_DE_LOW ;
 int DISPLAY_FLAGS_HSYNC_HIGH ;
 int DISPLAY_FLAGS_PIXDATA_NEGEDGE ;
 int DISPLAY_FLAGS_VSYNC_HIGH ;
 int DRM_DEBUG_DRIVER (char*,int,int,...) ;
 int DRM_ERROR (char*) ;
 int GCR_DEPOL ;
 int GCR_HSPOL ;
 int GCR_PCPOL ;
 int GCR_VSPOL ;
 int LTDC_AWCR ;
 int LTDC_BPCR ;
 int LTDC_GCR ;
 int LTDC_LIPCR ;
 int LTDC_SSCR ;
 int LTDC_TWCR ;
 int SSCR_HSW ;
 int SSCR_VSH ;
 int TWCR_TOTALH ;
 int TWCR_TOTALW ;
 struct ltdc_device* crtc_to_ltdc (struct drm_crtc*) ;
 int drm_display_mode_to_videomode (struct drm_display_mode*,struct videomode*) ;
 int pm_runtime_active (int ) ;
 int pm_runtime_get_sync (int ) ;
 int reg_update_bits (int ,int ,int,int) ;
 int reg_write (int ,int ,int) ;

__attribute__((used)) static void ltdc_crtc_mode_set_nofb(struct drm_crtc *crtc)
{
 struct ltdc_device *ldev = crtc_to_ltdc(crtc);
 struct drm_device *ddev = crtc->dev;
 struct drm_display_mode *mode = &crtc->state->adjusted_mode;
 struct videomode vm;
 u32 hsync, vsync, accum_hbp, accum_vbp, accum_act_w, accum_act_h;
 u32 total_width, total_height;
 u32 val;
 int ret;

 if (!pm_runtime_active(ddev->dev)) {
  ret = pm_runtime_get_sync(ddev->dev);
  if (ret) {
   DRM_ERROR("Failed to set mode, cannot get sync\n");
   return;
  }
 }

 drm_display_mode_to_videomode(mode, &vm);

 DRM_DEBUG_DRIVER("CRTC:%d mode:%s\n", crtc->base.id, mode->name);
 DRM_DEBUG_DRIVER("Video mode: %dx%d", vm.hactive, vm.vactive);
 DRM_DEBUG_DRIVER(" hfp %d hbp %d hsl %d vfp %d vbp %d vsl %d\n",
    vm.hfront_porch, vm.hback_porch, vm.hsync_len,
    vm.vfront_porch, vm.vback_porch, vm.vsync_len);


 hsync = vm.hsync_len - 1;
 vsync = vm.vsync_len - 1;
 accum_hbp = hsync + vm.hback_porch;
 accum_vbp = vsync + vm.vback_porch;
 accum_act_w = accum_hbp + vm.hactive;
 accum_act_h = accum_vbp + vm.vactive;
 total_width = accum_act_w + vm.hfront_porch;
 total_height = accum_act_h + vm.vfront_porch;


 val = 0;

 if (vm.flags & DISPLAY_FLAGS_HSYNC_HIGH)
  val |= GCR_HSPOL;

 if (vm.flags & DISPLAY_FLAGS_VSYNC_HIGH)
  val |= GCR_VSPOL;

 if (vm.flags & DISPLAY_FLAGS_DE_LOW)
  val |= GCR_DEPOL;

 if (vm.flags & DISPLAY_FLAGS_PIXDATA_NEGEDGE)
  val |= GCR_PCPOL;

 reg_update_bits(ldev->regs, LTDC_GCR,
   GCR_HSPOL | GCR_VSPOL | GCR_DEPOL | GCR_PCPOL, val);


 val = (hsync << 16) | vsync;
 reg_update_bits(ldev->regs, LTDC_SSCR, SSCR_VSH | SSCR_HSW, val);


 val = (accum_hbp << 16) | accum_vbp;
 reg_update_bits(ldev->regs, LTDC_BPCR, BPCR_AVBP | BPCR_AHBP, val);


 val = (accum_act_w << 16) | accum_act_h;
 reg_update_bits(ldev->regs, LTDC_AWCR, AWCR_AAW | AWCR_AAH, val);


 val = (total_width << 16) | total_height;
 reg_update_bits(ldev->regs, LTDC_TWCR, TWCR_TOTALH | TWCR_TOTALW, val);

 reg_write(ldev->regs, LTDC_LIPCR, (accum_act_h + 1));
}
