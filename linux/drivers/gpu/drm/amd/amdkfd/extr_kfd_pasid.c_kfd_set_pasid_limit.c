
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ kfd2kgd ;
 unsigned int pasid_bits ;

bool kfd_set_pasid_limit(unsigned int new_limit)
{
 if (new_limit < 2)
  return 0;

 if (new_limit < (1U << pasid_bits)) {
  if (kfd2kgd)



   return 0;

  while (new_limit < (1U << pasid_bits))
   pasid_bits--;
 }

 return 1;
}
