
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_crtc {TYPE_1__* state; } ;
struct TYPE_2__ {int adjusted_mode; } ;


 int sti_crtc_mode_set (struct drm_crtc*,int *) ;

__attribute__((used)) static void
sti_crtc_mode_set_nofb(struct drm_crtc *crtc)
{
 sti_crtc_mode_set(crtc, &crtc->state->adjusted_mode);
}
