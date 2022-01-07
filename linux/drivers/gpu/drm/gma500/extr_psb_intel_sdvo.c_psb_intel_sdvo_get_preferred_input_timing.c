
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psb_intel_sdvo_dtd {int part2; int part1; } ;
struct psb_intel_sdvo {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 int SDVO_CMD_GET_PREFERRED_INPUT_TIMING_PART1 ;
 int SDVO_CMD_GET_PREFERRED_INPUT_TIMING_PART2 ;
 scalar_t__ psb_intel_sdvo_get_value (struct psb_intel_sdvo*,int ,int *,int) ;

__attribute__((used)) static bool psb_intel_sdvo_get_preferred_input_timing(struct psb_intel_sdvo *psb_intel_sdvo,
        struct psb_intel_sdvo_dtd *dtd)
{
 BUILD_BUG_ON(sizeof(dtd->part1) != 8);
 BUILD_BUG_ON(sizeof(dtd->part2) != 8);
 return psb_intel_sdvo_get_value(psb_intel_sdvo, SDVO_CMD_GET_PREFERRED_INPUT_TIMING_PART1,
        &dtd->part1, sizeof(dtd->part1)) &&
  psb_intel_sdvo_get_value(psb_intel_sdvo, SDVO_CMD_GET_PREFERRED_INPUT_TIMING_PART2,
         &dtd->part2, sizeof(dtd->part2));
}
