
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u16 ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_crtc {int dummy; } ;



__attribute__((used)) static int dce_virtual_crtc_gamma_set(struct drm_crtc *crtc, u16 *red,
          u16 *green, u16 *blue, uint32_t size,
          struct drm_modeset_acquire_ctx *ctx)
{
 return 0;
}
