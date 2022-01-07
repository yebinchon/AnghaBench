
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct intel_forcewake_range {scalar_t__ start; scalar_t__ end; } ;



__attribute__((used)) static int fw_range_cmp(u32 offset, const struct intel_forcewake_range *entry)
{
 if (offset < entry->start)
  return -1;
 else if (offset > entry->end)
  return 1;
 else
  return 0;
}
