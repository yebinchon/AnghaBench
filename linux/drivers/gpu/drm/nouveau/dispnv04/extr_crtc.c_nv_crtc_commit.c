
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct nouveau_crtc {int index; } ;
struct drm_device {int dummy; } ;
struct drm_crtc_helper_funcs {int (* dpms ) (struct drm_crtc*,int ) ;} ;
struct drm_crtc {int y; int x; struct drm_crtc_helper_funcs* helper_private; struct drm_device* dev; } ;
struct TYPE_2__ {int mode_reg; } ;


 int DRM_MODE_DPMS_ON ;
 int MASK (int ) ;
 int NVReadVgaCrtc (struct drm_device*,int ,int ) ;
 int NVWriteVgaCrtc (struct drm_device*,int ,int ,int ) ;
 int NV_CIO_CRE_RCR ;
 int NV_CIO_CRE_RCR_ENDIAN_BIG ;
 int drm_crtc_vblank_on (struct drm_crtc*) ;
 struct nouveau_crtc* nouveau_crtc (struct drm_crtc*) ;
 int nouveau_hw_load_state (struct drm_device*,int ,int *) ;
 int nv04_crtc_mode_set_base (struct drm_crtc*,int ,int ,int *) ;
 TYPE_1__* nv04_display (struct drm_device*) ;
 int stub1 (struct drm_crtc*,int ) ;

__attribute__((used)) static void nv_crtc_commit(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 const struct drm_crtc_helper_funcs *funcs = crtc->helper_private;
 struct nouveau_crtc *nv_crtc = nouveau_crtc(crtc);

 nouveau_hw_load_state(dev, nv_crtc->index, &nv04_display(dev)->mode_reg);
 nv04_crtc_mode_set_base(crtc, crtc->x, crtc->y, ((void*)0));
 funcs->dpms(crtc, DRM_MODE_DPMS_ON);
 drm_crtc_vblank_on(crtc);
}
