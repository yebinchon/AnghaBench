
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct psb_intel_sdvo_dtd {int part2; int part1; } ;
struct psb_intel_sdvo {int dummy; } ;


 scalar_t__ psb_intel_sdvo_set_value (struct psb_intel_sdvo*,scalar_t__,int *,int) ;

__attribute__((used)) static bool psb_intel_sdvo_set_timing(struct psb_intel_sdvo *psb_intel_sdvo, u8 cmd,
      struct psb_intel_sdvo_dtd *dtd)
{
 return psb_intel_sdvo_set_value(psb_intel_sdvo, cmd, &dtd->part1, sizeof(dtd->part1)) &&
  psb_intel_sdvo_set_value(psb_intel_sdvo, cmd + 1, &dtd->part2, sizeof(dtd->part2));
}
