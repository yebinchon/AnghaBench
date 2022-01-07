
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
struct TYPE_9__ {int dst; TYPE_1__* fb; } ;
struct intel_plane_state {TYPE_4__ base; } ;
struct TYPE_7__ {int crtc_htotal; } ;
struct TYPE_8__ {TYPE_2__ adjusted_mode; } ;
struct intel_crtc_state {TYPE_3__ base; int pixel_rate; } ;
struct TYPE_10__ {int* cpp; } ;
struct TYPE_6__ {TYPE_5__* format; } ;


 int U32_MAX ;
 int drm_rect_width (int *) ;
 int ilk_wm_method1 (int ,int,int ) ;
 int ilk_wm_method2 (int ,int ,int ,int,int ) ;
 int intel_wm_plane_visible (struct intel_crtc_state const*,struct intel_plane_state const*) ;
 int min (int ,int ) ;

__attribute__((used)) static u32 ilk_compute_pri_wm(const struct intel_crtc_state *crtc_state,
         const struct intel_plane_state *plane_state,
         u32 mem_value, bool is_lp)
{
 u32 method1, method2;
 int cpp;

 if (mem_value == 0)
  return U32_MAX;

 if (!intel_wm_plane_visible(crtc_state, plane_state))
  return 0;

 cpp = plane_state->base.fb->format->cpp[0];

 method1 = ilk_wm_method1(crtc_state->pixel_rate, cpp, mem_value);

 if (!is_lp)
  return method1;

 method2 = ilk_wm_method2(crtc_state->pixel_rate,
     crtc_state->base.adjusted_mode.crtc_htotal,
     drm_rect_width(&plane_state->base.dst),
     cpp, mem_value);

 return min(method1, method2);
}
