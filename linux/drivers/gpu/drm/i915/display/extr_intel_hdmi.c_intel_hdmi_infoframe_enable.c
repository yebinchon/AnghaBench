
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARRAY_SIZE (unsigned int*) ;
 int BIT (int) ;
 unsigned int* infoframe_type_to_idx ;

u32 intel_hdmi_infoframe_enable(unsigned int type)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(infoframe_type_to_idx); i++) {
  if (infoframe_type_to_idx[i] == type)
   return BIT(i);
 }

 return 0;
}
