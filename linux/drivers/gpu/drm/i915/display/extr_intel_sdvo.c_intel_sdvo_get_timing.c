
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct intel_sdvo_dtd {int part2; int part1; } ;
struct intel_sdvo {int dummy; } ;


 scalar_t__ intel_sdvo_get_value (struct intel_sdvo*,scalar_t__,int *,int) ;

__attribute__((used)) static bool intel_sdvo_get_timing(struct intel_sdvo *intel_sdvo, u8 cmd,
      struct intel_sdvo_dtd *dtd)
{
 return intel_sdvo_get_value(intel_sdvo, cmd, &dtd->part1, sizeof(dtd->part1)) &&
  intel_sdvo_get_value(intel_sdvo, cmd + 1, &dtd->part2, sizeof(dtd->part2));
}
