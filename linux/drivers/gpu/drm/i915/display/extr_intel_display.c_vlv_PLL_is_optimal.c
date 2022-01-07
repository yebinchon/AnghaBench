
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct dpll {scalar_t__ p; scalar_t__ dot; } ;


 scalar_t__ IS_CHERRYVIEW (int ) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 unsigned long long abs (scalar_t__) ;
 unsigned int div_u64 (unsigned long long,int) ;
 int to_i915 (struct drm_device*) ;

__attribute__((used)) static bool vlv_PLL_is_optimal(struct drm_device *dev, int target_freq,
          const struct dpll *calculated_clock,
          const struct dpll *best_clock,
          unsigned int best_error_ppm,
          unsigned int *error_ppm)
{




 if (IS_CHERRYVIEW(to_i915(dev))) {
  *error_ppm = 0;

  return calculated_clock->p > best_clock->p;
 }

 if (WARN_ON_ONCE(!target_freq))
  return 0;

 *error_ppm = div_u64(1000000ULL *
    abs(target_freq - calculated_clock->dot),
        target_freq);





 if (*error_ppm < 100 && calculated_clock->p > best_clock->p) {
  *error_ppm = 0;

  return 1;
 }

 return *error_ppm + 10 < best_error_ppm;
}
