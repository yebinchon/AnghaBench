
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u16 ;
struct TYPE_6__ {scalar_t__ depth; } ;
struct TYPE_5__ {TYPE_1__* primary; } ;
struct nouveau_crtc {TYPE_3__ lut; TYPE_2__ base; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_4__ {int fb; } ;


 struct nouveau_crtc* nouveau_crtc (struct drm_crtc*) ;
 int nv_crtc_gamma_load (struct drm_crtc*) ;

__attribute__((used)) static int
nv_crtc_gamma_set(struct drm_crtc *crtc, u16 *r, u16 *g, u16 *b,
    uint32_t size,
    struct drm_modeset_acquire_ctx *ctx)
{
 struct nouveau_crtc *nv_crtc = nouveau_crtc(crtc);






 if (!nv_crtc->base.primary->fb) {
  nv_crtc->lut.depth = 0;
  return 0;
 }

 nv_crtc_gamma_load(crtc);

 return 0;
}
