
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;







__attribute__((used)) static bool __drm_format_has_alpha(u32 format)
{
 switch (format) {
 case 130:
 case 128:
 case 131:
 case 129:
  return 1;
 }

 return 0;
}
