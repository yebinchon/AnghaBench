
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sseu_dev_info {int * subslice_mask; } ;


 unsigned int ARRAY_SIZE (int *) ;
 scalar_t__ hweight8 (int ) ;

unsigned int
intel_sseu_subslice_total(const struct sseu_dev_info *sseu)
{
 unsigned int i, total = 0;

 for (i = 0; i < ARRAY_SIZE(sseu->subslice_mask); i++)
  total += hweight8(sseu->subslice_mask[i]);

 return total;
}
