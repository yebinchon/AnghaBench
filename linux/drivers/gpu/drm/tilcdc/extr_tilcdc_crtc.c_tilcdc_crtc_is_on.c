
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_crtc {TYPE_1__* state; } ;
struct TYPE_2__ {scalar_t__ active; scalar_t__ enable; } ;



__attribute__((used)) static bool tilcdc_crtc_is_on(struct drm_crtc *crtc)
{
 return crtc->state && crtc->state->enable && crtc->state->active;
}
