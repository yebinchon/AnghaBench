
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct sseu_dev_info {int * subslice_mask; } ;


 unsigned int hweight8 (int ) ;

unsigned int
intel_sseu_subslices_per_slice(const struct sseu_dev_info *sseu, u8 slice)
{
 return hweight8(sseu->subslice_mask[slice]);
}
