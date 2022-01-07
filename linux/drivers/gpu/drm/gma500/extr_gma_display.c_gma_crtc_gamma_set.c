
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int gma_crtc_load_lut (struct drm_crtc*) ;

int gma_crtc_gamma_set(struct drm_crtc *crtc, u16 *red, u16 *green, u16 *blue,
         u32 size,
         struct drm_modeset_acquire_ctx *ctx)
{
 gma_crtc_load_lut(crtc);

 return 0;
}
