
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_fixed_16_16_t ;
typedef int u64 ;
typedef int u32 ;
struct intel_plane_state {int dummy; } ;
struct intel_crtc_state {int pixel_rate; } ;


 scalar_t__ WARN_ON (int) ;
 int intel_wm_plane_visible (struct intel_crtc_state const*,struct intel_plane_state const*) ;
 int mul_round_up_u32_fixed16 (int ,int ) ;
 int skl_plane_downscale_amount (struct intel_crtc_state const*,struct intel_plane_state const*) ;

__attribute__((used)) static u32
skl_adjusted_plane_pixel_rate(const struct intel_crtc_state *crtc_state,
         const struct intel_plane_state *plane_state)
{
 u64 adjusted_pixel_rate;
 uint_fixed_16_16_t downscale_amount;


 if (WARN_ON(!intel_wm_plane_visible(crtc_state, plane_state)))
  return 0;





 adjusted_pixel_rate = crtc_state->pixel_rate;
 downscale_amount = skl_plane_downscale_amount(crtc_state, plane_state);

 return mul_round_up_u32_fixed16(adjusted_pixel_rate,
         downscale_amount);
}
