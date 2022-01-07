
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;







bool malidp_hw_format_is_afbc_only(u32 format)
{
 switch (format) {
 case 130:
 case 131:
 case 128:
 case 129:
  return 1;
 default:
  return 0;
 }
}
