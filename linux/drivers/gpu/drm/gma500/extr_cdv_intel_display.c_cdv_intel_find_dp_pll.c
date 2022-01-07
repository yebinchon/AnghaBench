
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gma_limit_t {int dummy; } ;
struct gma_crtc {TYPE_1__* clock_funcs; } ;
struct gma_clock_t {int p1; int p2; int n; int m2; int m1; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_2__ {int (* clock ) (int,struct gma_clock_t*) ;} ;


 int memcpy (struct gma_clock_t*,struct gma_clock_t*,int) ;
 int stub1 (int,struct gma_clock_t*) ;
 struct gma_crtc* to_gma_crtc (struct drm_crtc*) ;

__attribute__((used)) static bool cdv_intel_find_dp_pll(const struct gma_limit_t *limit,
      struct drm_crtc *crtc, int target,
      int refclk,
      struct gma_clock_t *best_clock)
{
 struct gma_crtc *gma_crtc = to_gma_crtc(crtc);
 struct gma_clock_t clock;

 switch (refclk) {
 case 27000:
  if (target < 200000) {
   clock.p1 = 2;
   clock.p2 = 10;
   clock.n = 1;
   clock.m1 = 0;
   clock.m2 = 118;
  } else {
   clock.p1 = 1;
   clock.p2 = 10;
   clock.n = 1;
   clock.m1 = 0;
   clock.m2 = 98;
  }
  break;

 case 100000:
  if (target < 200000) {
   clock.p1 = 2;
   clock.p2 = 10;
   clock.n = 5;
   clock.m1 = 0;
   clock.m2 = 160;
  } else {
   clock.p1 = 1;
   clock.p2 = 10;
   clock.n = 5;
   clock.m1 = 0;
   clock.m2 = 133;
  }
  break;

 default:
  return 0;
 }

 gma_crtc->clock_funcs->clock(refclk, &clock);
 memcpy(best_clock, &clock, sizeof(struct gma_clock_t));
 return 1;
}
