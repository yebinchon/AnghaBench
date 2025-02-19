
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sdvo_pixel_clock_range {int min; int max; } ;
struct intel_sdvo {int dummy; } ;
typedef int clocks ;


 int BUILD_BUG_ON (int) ;
 int SDVO_CMD_GET_INPUT_PIXEL_CLOCK_RANGE ;
 int intel_sdvo_get_value (struct intel_sdvo*,int ,struct intel_sdvo_pixel_clock_range*,int) ;

__attribute__((used)) static bool intel_sdvo_get_input_pixel_clock_range(struct intel_sdvo *intel_sdvo,
         int *clock_min,
         int *clock_max)
{
 struct intel_sdvo_pixel_clock_range clocks;

 BUILD_BUG_ON(sizeof(clocks) != 4);
 if (!intel_sdvo_get_value(intel_sdvo,
      SDVO_CMD_GET_INPUT_PIXEL_CLOCK_RANGE,
      &clocks, sizeof(clocks)))
  return 0;


 *clock_min = clocks.min * 10;
 *clock_max = clocks.max * 10;
 return 1;
}
