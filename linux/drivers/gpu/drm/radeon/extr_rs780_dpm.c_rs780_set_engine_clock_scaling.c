
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct igp_ps {scalar_t__ sclk_high; scalar_t__ sclk_low; } ;
struct atom_clock_dividers {scalar_t__ ref_div; scalar_t__ post_div; scalar_t__ fb_div; } ;


 int COMPUTE_ENGINE_PLL_PARAM ;
 int EINVAL ;
 int FORCE_FEEDBACK_DIV ;
 int FVTHROT_FBDIV_REG0 ;
 int FVTHROT_FBDIV_REG1 ;
 int MAX_FEEDBACK_DIV (scalar_t__) ;
 int MAX_FEEDBACK_DIV_MASK ;
 int MIN_FEEDBACK_DIV (scalar_t__) ;
 int MIN_FEEDBACK_DIV_MASK ;
 int WREG32_P (int ,int,int) ;
 int radeon_atom_get_clock_dividers (struct radeon_device*,int ,scalar_t__,int,struct atom_clock_dividers*) ;
 int rs780_force_fbdiv (struct radeon_device*,scalar_t__) ;
 struct igp_ps* rs780_get_ps (struct radeon_ps*) ;

__attribute__((used)) static int rs780_set_engine_clock_scaling(struct radeon_device *rdev,
       struct radeon_ps *new_ps,
       struct radeon_ps *old_ps)
{
 struct atom_clock_dividers min_dividers, max_dividers, current_max_dividers;
 struct igp_ps *new_state = rs780_get_ps(new_ps);
 struct igp_ps *old_state = rs780_get_ps(old_ps);
 int ret;

 if ((new_state->sclk_high == old_state->sclk_high) &&
     (new_state->sclk_low == old_state->sclk_low))
  return 0;

 ret = radeon_atom_get_clock_dividers(rdev, COMPUTE_ENGINE_PLL_PARAM,
          new_state->sclk_low, 0, &min_dividers);
 if (ret)
  return ret;

 ret = radeon_atom_get_clock_dividers(rdev, COMPUTE_ENGINE_PLL_PARAM,
          new_state->sclk_high, 0, &max_dividers);
 if (ret)
  return ret;

 ret = radeon_atom_get_clock_dividers(rdev, COMPUTE_ENGINE_PLL_PARAM,
          old_state->sclk_high, 0, &current_max_dividers);
 if (ret)
  return ret;

 if ((min_dividers.ref_div != max_dividers.ref_div) ||
     (min_dividers.post_div != max_dividers.post_div) ||
     (max_dividers.ref_div != current_max_dividers.ref_div) ||
     (max_dividers.post_div != current_max_dividers.post_div))
  return -EINVAL;

 rs780_force_fbdiv(rdev, max_dividers.fb_div);

 if (max_dividers.fb_div > min_dividers.fb_div) {
  WREG32_P(FVTHROT_FBDIV_REG0,
    MIN_FEEDBACK_DIV(min_dividers.fb_div) |
    MAX_FEEDBACK_DIV(max_dividers.fb_div),
    ~(MIN_FEEDBACK_DIV_MASK | MAX_FEEDBACK_DIV_MASK));

  WREG32_P(FVTHROT_FBDIV_REG1, 0, ~FORCE_FEEDBACK_DIV);
 }

 return 0;
}
