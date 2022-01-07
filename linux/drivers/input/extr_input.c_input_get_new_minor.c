
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int INPUT_FIRST_DYNAMIC_DEV ;
 int INPUT_MAX_CHAR_DEVICES ;
 int ida_simple_get (int *,int,int,int ) ;
 int input_ida ;

int input_get_new_minor(int legacy_base, unsigned int legacy_num,
   bool allow_dynamic)
{





 if (legacy_base >= 0) {
  int minor = ida_simple_get(&input_ida,
        legacy_base,
        legacy_base + legacy_num,
        GFP_KERNEL);
  if (minor >= 0 || !allow_dynamic)
   return minor;
 }

 return ida_simple_get(&input_ida,
         INPUT_FIRST_DYNAMIC_DEV, INPUT_MAX_CHAR_DEVICES,
         GFP_KERNEL);
}
