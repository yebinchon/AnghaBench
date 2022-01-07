
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vc4_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_1__* state; } ;
struct TYPE_3__ {struct drm_crtc* crtc; } ;


 int GFP_KERNEL ;
 TYPE_1__* kzalloc (int,int ) ;
 int vc4_crtc_destroy_state (struct drm_crtc*,TYPE_1__*) ;

__attribute__((used)) static void
vc4_crtc_reset(struct drm_crtc *crtc)
{
 if (crtc->state)
  vc4_crtc_destroy_state(crtc, crtc->state);

 crtc->state = kzalloc(sizeof(struct vc4_crtc_state), GFP_KERNEL);
 if (crtc->state)
  crtc->state->crtc = crtc;
}
