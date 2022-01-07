
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {int crtc_w; TYPE_2__* fb; } ;
struct intel_plane_state {TYPE_5__ base; } ;
struct TYPE_8__ {int crtc_htotal; } ;
struct TYPE_9__ {TYPE_3__ adjusted_mode; } ;
struct intel_crtc_state {TYPE_4__ base; int pixel_rate; } ;
struct TYPE_7__ {TYPE_1__* format; } ;
struct TYPE_6__ {int* cpp; } ;


 int U32_MAX ;
 int ilk_wm_method2 (int ,int ,int ,int,int ) ;
 int intel_wm_plane_visible (struct intel_crtc_state const*,struct intel_plane_state const*) ;

__attribute__((used)) static u32 ilk_compute_cur_wm(const struct intel_crtc_state *crtc_state,
         const struct intel_plane_state *plane_state,
         u32 mem_value)
{
 int cpp;

 if (mem_value == 0)
  return U32_MAX;

 if (!intel_wm_plane_visible(crtc_state, plane_state))
  return 0;

 cpp = plane_state->base.fb->format->cpp[0];

 return ilk_wm_method2(crtc_state->pixel_rate,
         crtc_state->base.adjusted_mode.crtc_htotal,
         plane_state->base.crtc_w, cpp, mem_value);
}
