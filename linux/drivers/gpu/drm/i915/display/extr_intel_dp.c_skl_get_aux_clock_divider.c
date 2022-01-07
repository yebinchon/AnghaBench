
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_dp {int dummy; } ;



__attribute__((used)) static u32 skl_get_aux_clock_divider(struct intel_dp *intel_dp, int index)
{





 return index ? 0 : 1;
}
