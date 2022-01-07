
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ family; } ;
struct TYPE_7__ {TYPE_1__ info; } ;
struct TYPE_8__ {TYPE_2__ device; } ;
struct nouveau_drm {TYPE_3__ client; } ;
struct nouveau_crtc {int index; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_display_mode {int clock; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_9__ {int sel_clk; } ;
struct TYPE_10__ {TYPE_4__ mode_reg; } ;


 int NVWriteRAMDAC (struct drm_device*,int ,int ,int ) ;
 int NV_DEBUG (struct nouveau_drm*,char*,int ) ;
 scalar_t__ NV_DEVICE_INFO_V0_CURIE ;
 int NV_PRAMDAC_SEL_CLK ;
 int drm_mode_debug_printmodeline (struct drm_display_mode*) ;
 struct nouveau_crtc* nouveau_crtc (struct drm_crtc*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 TYPE_5__* nv04_display (struct drm_device*) ;
 int nv_crtc_calc_state_ext (struct drm_crtc*,struct drm_display_mode*,int ) ;
 int nv_crtc_mode_set_regs (struct drm_crtc*,struct drm_display_mode*) ;
 int nv_crtc_mode_set_vga (struct drm_crtc*,struct drm_display_mode*) ;
 int nv_crtc_swap_fbs (struct drm_crtc*,struct drm_framebuffer*) ;
 int nv_lock_vga_crtc_shadow (struct drm_device*,int ,int) ;

__attribute__((used)) static int
nv_crtc_mode_set(struct drm_crtc *crtc, struct drm_display_mode *mode,
   struct drm_display_mode *adjusted_mode,
   int x, int y, struct drm_framebuffer *old_fb)
{
 struct drm_device *dev = crtc->dev;
 struct nouveau_crtc *nv_crtc = nouveau_crtc(crtc);
 struct nouveau_drm *drm = nouveau_drm(dev);
 int ret;

 NV_DEBUG(drm, "CTRC mode on CRTC %d:\n", nv_crtc->index);
 drm_mode_debug_printmodeline(adjusted_mode);

 ret = nv_crtc_swap_fbs(crtc, old_fb);
 if (ret)
  return ret;


 nv_lock_vga_crtc_shadow(dev, nv_crtc->index, -1);

 nv_crtc_mode_set_vga(crtc, adjusted_mode);

 if (drm->client.device.info.family == NV_DEVICE_INFO_V0_CURIE)
  NVWriteRAMDAC(dev, 0, NV_PRAMDAC_SEL_CLK, nv04_display(dev)->mode_reg.sel_clk);
 nv_crtc_mode_set_regs(crtc, adjusted_mode);
 nv_crtc_calc_state_ext(crtc, mode, adjusted_mode->clock);
 return 0;
}
