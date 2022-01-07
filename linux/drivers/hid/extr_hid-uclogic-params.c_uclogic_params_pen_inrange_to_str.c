
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum uclogic_params_pen_inrange { ____Placeholder_uclogic_params_pen_inrange } uclogic_params_pen_inrange ;






const char *uclogic_params_pen_inrange_to_str(
   enum uclogic_params_pen_inrange inrange)
{
 switch (inrange) {
 case 128:
  return "normal";
 case 130:
  return "inverted";
 case 129:
  return "none";
 default:
  return ((void*)0);
 }
}
