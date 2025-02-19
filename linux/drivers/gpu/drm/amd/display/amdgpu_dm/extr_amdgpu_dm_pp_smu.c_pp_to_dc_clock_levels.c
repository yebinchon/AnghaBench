
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct dm_pp_clock_levels {size_t num_levels; int * clocks_in_khz; } ;
struct amd_pp_clocks {scalar_t__ count; int * clock; } ;
typedef enum dm_pp_clock_type { ____Placeholder_dm_pp_clock_type } dm_pp_clock_type ;


 int DC_DECODE_PP_CLOCK_TYPE (int) ;
 scalar_t__ DM_PP_MAX_CLOCK_LEVELS ;
 int DRM_INFO (char*,int ,...) ;

__attribute__((used)) static void pp_to_dc_clock_levels(
  const struct amd_pp_clocks *pp_clks,
  struct dm_pp_clock_levels *dc_clks,
  enum dm_pp_clock_type dc_clk_type)
{
 uint32_t i;

 if (pp_clks->count > DM_PP_MAX_CLOCK_LEVELS) {
  DRM_INFO("DM_PPLIB: Warning: %s clock: number of levels %d exceeds maximum of %d!\n",
    DC_DECODE_PP_CLOCK_TYPE(dc_clk_type),
    pp_clks->count,
    DM_PP_MAX_CLOCK_LEVELS);

  dc_clks->num_levels = DM_PP_MAX_CLOCK_LEVELS;
 } else
  dc_clks->num_levels = pp_clks->count;

 DRM_INFO("DM_PPLIB: values for %s clock\n",
   DC_DECODE_PP_CLOCK_TYPE(dc_clk_type));

 for (i = 0; i < dc_clks->num_levels; i++) {
  DRM_INFO("DM_PPLIB:\t %d\n", pp_clks->clock[i]);
  dc_clks->clocks_in_khz[i] = pp_clks->clock[i];
 }
}
