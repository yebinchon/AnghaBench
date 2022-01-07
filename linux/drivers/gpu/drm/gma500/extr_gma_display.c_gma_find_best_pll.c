
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


struct TYPE_11__ {scalar_t__ min; scalar_t__ max; } ;
struct TYPE_10__ {scalar_t__ min; scalar_t__ max; } ;
struct TYPE_9__ {scalar_t__ min; scalar_t__ max; } ;
struct TYPE_8__ {scalar_t__ min; scalar_t__ max; } ;
struct TYPE_7__ {int dot_limit; int p2_fast; int p2_slow; } ;
struct gma_limit_t {TYPE_5__ p1; TYPE_4__ n; TYPE_3__ m2; TYPE_2__ m1; TYPE_1__ p2; } ;
struct gma_clock_t {scalar_t__ m1; scalar_t__ m2; scalar_t__ n; scalar_t__ p1; scalar_t__ dot; int p2; } ;
struct gma_clock_funcs {int (* pll_is_valid ) (struct drm_crtc*,struct gma_limit_t const*,struct gma_clock_t*) ;int (* clock ) (int,struct gma_clock_t*) ;} ;
struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_12__ {struct gma_clock_funcs* clock_funcs; } ;


 int INTEL_OUTPUT_LVDS ;
 int LVDS ;
 int LVDS_CLKB_POWER_MASK ;
 int LVDS_CLKB_POWER_UP ;
 int LVDS_PORT_EN ;
 int REG_READ (int ) ;
 int abs (scalar_t__) ;
 scalar_t__ gma_pipe_has_type (struct drm_crtc*,int ) ;
 int memset (struct gma_clock_t*,int ,int) ;
 int stub1 (int,struct gma_clock_t*) ;
 int stub2 (struct drm_crtc*,struct gma_limit_t const*,struct gma_clock_t*) ;
 TYPE_6__* to_gma_crtc (struct drm_crtc*) ;

bool gma_find_best_pll(const struct gma_limit_t *limit,
         struct drm_crtc *crtc, int target, int refclk,
         struct gma_clock_t *best_clock)
{
 struct drm_device *dev = crtc->dev;
 const struct gma_clock_funcs *clock_funcs =
      to_gma_crtc(crtc)->clock_funcs;
 struct gma_clock_t clock;
 int err = target;

 if (gma_pipe_has_type(crtc, INTEL_OUTPUT_LVDS) &&
     (REG_READ(LVDS) & LVDS_PORT_EN) != 0) {






  if ((REG_READ(LVDS) & LVDS_CLKB_POWER_MASK) ==
      LVDS_CLKB_POWER_UP)
   clock.p2 = limit->p2.p2_fast;
  else
   clock.p2 = limit->p2.p2_slow;
 } else {
  if (target < limit->p2.dot_limit)
   clock.p2 = limit->p2.p2_slow;
  else
   clock.p2 = limit->p2.p2_fast;
 }

 memset(best_clock, 0, sizeof(*best_clock));


 for (clock.m1 = limit->m1.min; clock.m1 <= limit->m1.max; clock.m1++) {
  for (clock.m2 = limit->m2.min;
       (clock.m2 < clock.m1 || clock.m1 == 0) &&
        clock.m2 <= limit->m2.max; clock.m2++) {
   for (clock.n = limit->n.min;
        clock.n <= limit->n.max; clock.n++) {
    for (clock.p1 = limit->p1.min;
         clock.p1 <= limit->p1.max;
         clock.p1++) {
     int this_err;

     clock_funcs->clock(refclk, &clock);

     if (!clock_funcs->pll_is_valid(crtc,
        limit, &clock))
      continue;

     this_err = abs(clock.dot - target);
     if (this_err < err) {
      *best_clock = clock;
      err = this_err;
     }
    }
   }
  }
 }

 return err != target;
}
