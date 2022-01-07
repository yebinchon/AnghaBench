
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ max; scalar_t__ min; } ;
struct TYPE_11__ {scalar_t__ max; scalar_t__ min; } ;
struct TYPE_10__ {scalar_t__ max; scalar_t__ min; } ;
struct TYPE_9__ {int max; int min; } ;
struct intel_limit {TYPE_6__ p1; TYPE_5__ m2; TYPE_4__ m1; TYPE_3__ n; } ;
struct TYPE_8__ {TYPE_1__* crtc; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct drm_device {int dummy; } ;
struct dpll {int n; scalar_t__ m1; scalar_t__ m2; scalar_t__ p1; scalar_t__ dot; int p2; } ;
struct TYPE_7__ {struct drm_device* dev; } ;


 int abs (scalar_t__) ;
 int i9xx_calc_dpll_params (int,struct dpll*) ;
 int i9xx_select_p2_div (struct intel_limit const*,struct intel_crtc_state*,int) ;
 int intel_PLL_is_valid (int ,struct intel_limit const*,struct dpll*) ;
 int memset (struct dpll*,int ,int) ;
 int to_i915 (struct drm_device*) ;

__attribute__((used)) static bool
g4x_find_best_dpll(const struct intel_limit *limit,
     struct intel_crtc_state *crtc_state,
     int target, int refclk, struct dpll *match_clock,
     struct dpll *best_clock)
{
 struct drm_device *dev = crtc_state->base.crtc->dev;
 struct dpll clock;
 int max_n;
 bool found = 0;

 int err_most = (target >> 8) + (target >> 9);

 memset(best_clock, 0, sizeof(*best_clock));

 clock.p2 = i9xx_select_p2_div(limit, crtc_state, target);

 max_n = limit->n.max;

 for (clock.n = limit->n.min; clock.n <= max_n; clock.n++) {

  for (clock.m1 = limit->m1.max;
       clock.m1 >= limit->m1.min; clock.m1--) {
   for (clock.m2 = limit->m2.max;
        clock.m2 >= limit->m2.min; clock.m2--) {
    for (clock.p1 = limit->p1.max;
         clock.p1 >= limit->p1.min; clock.p1--) {
     int this_err;

     i9xx_calc_dpll_params(refclk, &clock);
     if (!intel_PLL_is_valid(to_i915(dev),
        limit,
        &clock))
      continue;

     this_err = abs(clock.dot - target);
     if (this_err < err_most) {
      *best_clock = clock;
      err_most = this_err;
      max_n = clock.n;
      found = 1;
     }
    }
   }
  }
 }
 return found;
}
