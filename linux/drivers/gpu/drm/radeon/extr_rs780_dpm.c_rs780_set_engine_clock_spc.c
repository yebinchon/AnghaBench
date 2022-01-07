
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct igp_ps {scalar_t__ sclk_high; scalar_t__ sclk_low; } ;
struct igp_power_info {scalar_t__ crtc_id; } ;


 int CG_INTGFX_MISC ;
 int FVTHROT_VBLANK_SEL ;
 int WREG32_P (int ,int ,int ) ;
 struct igp_power_info* rs780_get_pi (struct radeon_device*) ;
 struct igp_ps* rs780_get_ps (struct radeon_ps*) ;

__attribute__((used)) static void rs780_set_engine_clock_spc(struct radeon_device *rdev,
           struct radeon_ps *new_ps,
           struct radeon_ps *old_ps)
{
 struct igp_ps *new_state = rs780_get_ps(new_ps);
 struct igp_ps *old_state = rs780_get_ps(old_ps);
 struct igp_power_info *pi = rs780_get_pi(rdev);

 if ((new_state->sclk_high == old_state->sclk_high) &&
     (new_state->sclk_low == old_state->sclk_low))
  return;

 if (pi->crtc_id == 0)
  WREG32_P(CG_INTGFX_MISC, 0, ~FVTHROT_VBLANK_SEL);
 else
  WREG32_P(CG_INTGFX_MISC, FVTHROT_VBLANK_SEL, ~FVTHROT_VBLANK_SEL);

}
