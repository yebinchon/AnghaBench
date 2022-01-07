
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_guc_ct_channel {int next_fence; } ;



__attribute__((used)) static u32 ctch_get_next_fence(struct intel_guc_ct_channel *ctch)
{

 return ++ctch->next_fence;
}
