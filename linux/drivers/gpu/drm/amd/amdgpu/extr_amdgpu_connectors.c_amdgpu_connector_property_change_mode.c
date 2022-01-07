
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {struct drm_crtc* crtc; } ;
struct drm_crtc {TYPE_1__* primary; int y; int x; int mode; scalar_t__ enabled; } ;
struct TYPE_2__ {int fb; } ;


 int drm_crtc_helper_set_mode (struct drm_crtc*,int *,int ,int ,int ) ;

__attribute__((used)) static void amdgpu_connector_property_change_mode(struct drm_encoder *encoder)
{
 struct drm_crtc *crtc = encoder->crtc;

 if (crtc && crtc->enabled) {
  drm_crtc_helper_set_mode(crtc, &crtc->mode,
      crtc->x, crtc->y, crtc->primary->fb);
 }
}
