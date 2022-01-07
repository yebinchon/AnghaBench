
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hmm_range {int pfn_shift; int values; int flags; } ;


 int PAGE_SHIFT ;
 int hmm_range_flags ;
 int hmm_range_values ;

void amdgpu_hmm_init_range(struct hmm_range *range)
{
 if (range) {
  range->flags = hmm_range_flags;
  range->values = hmm_range_values;
  range->pfn_shift = PAGE_SHIFT;
 }
}
