
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int ADE_ALP_GLOBAL ;
 int ADE_ALP_MUL_COEFF_2 ;
 int ADE_ALP_MUL_COEFF_3 ;
 int ADE_ALP_PIXEL ;
 int ADE_ALP_PIXEL_AND_GLB ;
 int has_Alpha_channel (int ) ;

__attribute__((used)) static void ade_get_blending_params(u32 fmt, u8 glb_alpha, u8 *alp_mode,
        u8 *alp_sel, u8 *under_alp_sel)
{
 bool has_alpha = has_Alpha_channel(fmt);




 if (has_alpha && glb_alpha < 255)
  *alp_mode = ADE_ALP_PIXEL_AND_GLB;
 else if (has_alpha)
  *alp_mode = ADE_ALP_PIXEL;
 else
  *alp_mode = ADE_ALP_GLOBAL;




 *alp_sel = ADE_ALP_MUL_COEFF_3;
 *under_alp_sel = ADE_ALP_MUL_COEFF_2;
}
