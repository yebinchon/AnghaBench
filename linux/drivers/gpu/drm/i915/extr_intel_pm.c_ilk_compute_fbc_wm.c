
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int dst; TYPE_2__* fb; } ;
struct intel_plane_state {TYPE_3__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_5__ {TYPE_1__* format; } ;
struct TYPE_4__ {int* cpp; } ;


 int drm_rect_width (int *) ;
 int ilk_wm_fbc (int ,int ,int) ;
 int intel_wm_plane_visible (struct intel_crtc_state const*,struct intel_plane_state const*) ;

__attribute__((used)) static u32 ilk_compute_fbc_wm(const struct intel_crtc_state *crtc_state,
         const struct intel_plane_state *plane_state,
         u32 pri_val)
{
 int cpp;

 if (!intel_wm_plane_visible(crtc_state, plane_state))
  return 0;

 cpp = plane_state->base.fb->format->cpp[0];

 return ilk_wm_fbc(pri_val, drm_rect_width(&plane_state->base.dst), cpp);
}
