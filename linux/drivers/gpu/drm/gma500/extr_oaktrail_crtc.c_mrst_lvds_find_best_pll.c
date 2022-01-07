
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ min; scalar_t__ max; } ;
struct TYPE_3__ {scalar_t__ min; scalar_t__ max; } ;
struct gma_limit_t {TYPE_2__ p1; TYPE_1__ m; } ;
struct gma_clock_t {scalar_t__ m; scalar_t__ p1; scalar_t__ dot; } ;
struct drm_crtc {int dummy; } ;


 int abs (scalar_t__) ;
 int memset (struct gma_clock_t*,int ,int) ;
 int mrst_lvds_clock (int,struct gma_clock_t*) ;

__attribute__((used)) static bool mrst_lvds_find_best_pll(const struct gma_limit_t *limit,
        struct drm_crtc *crtc, int target,
        int refclk, struct gma_clock_t *best_clock)
{
 struct gma_clock_t clock;
 int err = target;

 memset(best_clock, 0, sizeof(*best_clock));

 for (clock.m = limit->m.min; clock.m <= limit->m.max; clock.m++) {
  for (clock.p1 = limit->p1.min; clock.p1 <= limit->p1.max;
       clock.p1++) {
   int this_err;

   mrst_lvds_clock(refclk, &clock);

   this_err = abs(clock.dot - target);
   if (this_err < err) {
    *best_clock = clock;
    err = this_err;
   }
  }
 }
 return err != target;
}
