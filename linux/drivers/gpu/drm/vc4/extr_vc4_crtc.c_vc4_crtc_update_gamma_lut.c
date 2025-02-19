
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct vc4_crtc {void** lut_b; void** lut_g; void** lut_r; } ;
struct drm_crtc {TYPE_1__* state; } ;
struct drm_color_lut {int blue; int green; int red; } ;
struct TYPE_4__ {struct drm_color_lut* data; } ;
struct TYPE_3__ {TYPE_2__* gamma_lut; } ;


 void* drm_color_lut_extract (int ,int) ;
 size_t drm_color_lut_size (TYPE_2__*) ;
 struct vc4_crtc* to_vc4_crtc (struct drm_crtc*) ;
 int vc4_crtc_lut_load (struct drm_crtc*) ;

__attribute__((used)) static void
vc4_crtc_update_gamma_lut(struct drm_crtc *crtc)
{
 struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
 struct drm_color_lut *lut = crtc->state->gamma_lut->data;
 u32 length = drm_color_lut_size(crtc->state->gamma_lut);
 u32 i;

 for (i = 0; i < length; i++) {
  vc4_crtc->lut_r[i] = drm_color_lut_extract(lut[i].red, 8);
  vc4_crtc->lut_g[i] = drm_color_lut_extract(lut[i].green, 8);
  vc4_crtc->lut_b[i] = drm_color_lut_extract(lut[i].blue, 8);
 }

 vc4_crtc_lut_load(crtc);
}
