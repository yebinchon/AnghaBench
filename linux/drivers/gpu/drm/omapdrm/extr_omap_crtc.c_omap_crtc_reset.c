
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct omap_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_1__* state; } ;
struct TYPE_4__ {struct drm_crtc* crtc; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_crtc_destroy_state (TYPE_1__*) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;

__attribute__((used)) static void omap_crtc_reset(struct drm_crtc *crtc)
{
 if (crtc->state)
  __drm_atomic_helper_crtc_destroy_state(crtc->state);

 kfree(crtc->state);
 crtc->state = kzalloc(sizeof(struct omap_crtc_state), GFP_KERNEL);

 if (crtc->state)
  crtc->state->crtc = crtc;
}
