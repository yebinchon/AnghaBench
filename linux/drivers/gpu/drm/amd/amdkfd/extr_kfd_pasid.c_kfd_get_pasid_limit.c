
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int pasid_bits ;

unsigned int kfd_get_pasid_limit(void)
{
 return 1U << pasid_bits;
}
