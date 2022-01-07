
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dc_color_space { ____Placeholder_dc_color_space } dc_color_space ;


 int BREAK_TO_DEBUGGER () ;
bool is_rgb_cspace(enum dc_color_space output_color_space)
{
 switch (output_color_space) {
 case 133:
 case 132:
 case 137:
 case 136:
 case 134:
  return 1;
 case 131:
 case 129:
 case 130:
 case 128:
 case 135:
  return 0;
 default:

  BREAK_TO_DEBUGGER();
  return 0;
 }
}
