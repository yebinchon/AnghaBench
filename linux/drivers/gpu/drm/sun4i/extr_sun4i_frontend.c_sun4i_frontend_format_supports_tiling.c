
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
__attribute__((used)) static bool sun4i_frontend_format_supports_tiling(uint32_t fmt)
{
 switch (fmt) {
 case 137:
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 129:
 case 128:
 case 130:
  return 1;

 default:
  return 0;
 }
}
