
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int coef_lut_a_legacy ;
 int coef_lut_b ;
 int coef_lut_c_c_legacy ;
 int coef_lut_c_y_legacy ;
 int coef_lut_d_c_legacy ;
 int coef_lut_d_y_legacy ;
 int coef_lut_e_c_legacy ;
 int coef_lut_e_y_legacy ;
 int coef_lut_f_c_legacy ;
 int coef_lut_f_y_legacy ;
 int memcmp (int *,int ,int) ;

__attribute__((used)) static const char *hqvdp_dbg_get_lut(u32 *coef)
{
 if (!memcmp(coef, coef_lut_a_legacy, 16))
  return "LUT A";
 if (!memcmp(coef, coef_lut_b, 16))
  return "LUT B";
 if (!memcmp(coef, coef_lut_c_y_legacy, 16))
  return "LUT C Y";
 if (!memcmp(coef, coef_lut_c_c_legacy, 16))
  return "LUT C C";
 if (!memcmp(coef, coef_lut_d_y_legacy, 16))
  return "LUT D Y";
 if (!memcmp(coef, coef_lut_d_c_legacy, 16))
  return "LUT D C";
 if (!memcmp(coef, coef_lut_e_y_legacy, 16))
  return "LUT E Y";
 if (!memcmp(coef, coef_lut_e_c_legacy, 16))
  return "LUT E C";
 if (!memcmp(coef, coef_lut_f_y_legacy, 16))
  return "LUT F Y";
 if (!memcmp(coef, coef_lut_f_c_legacy, 16))
  return "LUT F C";
 return "<UNKNOWN>";
}
