
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SUN8I_UI_SCALER_SCALE_FRAC ;

__attribute__((used)) static int sun8i_ui_scaler_coef_index(unsigned int step)
{
 unsigned int scale, int_part, float_part;

 scale = step >> (SUN8I_UI_SCALER_SCALE_FRAC - 3);
 int_part = scale >> 3;
 float_part = scale & 0x7;

 switch (int_part) {
 case 0:
  return 0;
 case 1:
  return float_part;
 case 2:
  return 8 + (float_part >> 1);
 case 3:
  return 12;
 case 4:
  return 13;
 default:
  return 14;
 }
}
