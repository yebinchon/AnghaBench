
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef size_t uint32_t ;
struct phm_fuses_default {scalar_t__ key; int VFT0_b; int VFT0_m2; int VFT0_m1; int VFT1_b; int VFT1_m2; int VFT1_m1; int VFT2_b; int VFT2_m2; int VFT2_m1; } ;


 int EINVAL ;
 struct phm_fuses_default* vega10_fuses_default ;

int pp_override_get_default_fuse_value(uint64_t key,
   struct phm_fuses_default *result)
{
 const struct phm_fuses_default *list = vega10_fuses_default;
 uint32_t i;

 for (i = 0; list[i].key != 0; i++) {
  if (key == list[i].key) {
   result->key = list[i].key;
   result->VFT2_m1 = list[i].VFT2_m1;
   result->VFT2_m2 = list[i].VFT2_m2;
   result->VFT2_b = list[i].VFT2_b;
   result->VFT1_m1 = list[i].VFT1_m1;
   result->VFT1_m2 = list[i].VFT1_m2;
   result->VFT1_b = list[i].VFT1_b;
   result->VFT0_m1 = list[i].VFT0_m1;
   result->VFT0_m2 = list[i].VFT0_m2;
   result->VFT0_b = list[i].VFT0_b;
   return 0;
  }
 }

 return -EINVAL;
}
