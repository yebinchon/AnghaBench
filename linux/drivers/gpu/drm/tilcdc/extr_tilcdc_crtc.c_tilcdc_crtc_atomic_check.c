
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drm_crtc_state {TYPE_4__* state; int active; } ;
struct drm_crtc {scalar_t__ primary; TYPE_2__* dev; } ;
struct TYPE_8__ {TYPE_3__* planes; } ;
struct TYPE_7__ {scalar_t__ ptr; TYPE_1__* state; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {struct drm_crtc* crtc; } ;


 int EINVAL ;
 int dev_dbg (int ,char*) ;

__attribute__((used)) static int tilcdc_crtc_atomic_check(struct drm_crtc *crtc,
        struct drm_crtc_state *state)
{

 if (!state->active)
  return 0;

 if (state->state->planes[0].ptr != crtc->primary ||
     state->state->planes[0].state == ((void*)0) ||
     state->state->planes[0].state->crtc != crtc) {
  dev_dbg(crtc->dev->dev, "CRTC primary plane must be present");
  return -EINVAL;
 }

 return 0;
}
