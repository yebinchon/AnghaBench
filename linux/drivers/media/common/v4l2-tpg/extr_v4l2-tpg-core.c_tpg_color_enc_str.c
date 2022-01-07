
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tgp_color_enc { ____Placeholder_tgp_color_enc } tgp_color_enc ;







__attribute__((used)) static const char *tpg_color_enc_str(enum tgp_color_enc
       color_enc)
{
 switch (color_enc) {
 case 131:
  return "HSV";
 case 128:
  return "Y'CbCr";
 case 130:
  return "Luma";
 case 129:
 default:
  return "R'G'B";

 }
}
