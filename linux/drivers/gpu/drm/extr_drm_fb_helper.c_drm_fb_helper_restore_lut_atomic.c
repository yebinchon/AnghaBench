
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct drm_crtc {int gamma_size; TYPE_1__* funcs; int * gamma_store; } ;
struct TYPE_2__ {int (* gamma_set ) (struct drm_crtc*,int *,int *,int *,int,int *) ;} ;


 int stub1 (struct drm_crtc*,int *,int *,int *,int,int *) ;

__attribute__((used)) static void drm_fb_helper_restore_lut_atomic(struct drm_crtc *crtc)
{
 uint16_t *r_base, *g_base, *b_base;

 if (crtc->funcs->gamma_set == ((void*)0))
  return;

 r_base = crtc->gamma_store;
 g_base = r_base + crtc->gamma_size;
 b_base = g_base + crtc->gamma_size;

 crtc->funcs->gamma_set(crtc, r_base, g_base, b_base,
          crtc->gamma_size, ((void*)0));
}
