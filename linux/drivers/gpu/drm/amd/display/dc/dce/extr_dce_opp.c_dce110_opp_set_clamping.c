
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce110_opp {int dummy; } ;
struct clamping_and_pixel_encoding_params {int clamping_level; } ;







 int FMT_CLAMP_CNTL ;
 int FMT_CLAMP_COLOR_FORMAT ;
 int FMT_CLAMP_COMPONENT_B ;
 int FMT_CLAMP_COMPONENT_G ;
 int FMT_CLAMP_COMPONENT_R ;
 int FMT_CLAMP_DATA_EN ;
 int FMT_CLAMP_LOWER_B ;
 int FMT_CLAMP_LOWER_G ;
 int FMT_CLAMP_LOWER_R ;
 int FMT_CLAMP_UPPER_B ;
 int FMT_CLAMP_UPPER_G ;
 int FMT_CLAMP_UPPER_R ;
 int REG_SET_2 (int ,int ,int ,int,int ,int) ;

void dce110_opp_set_clamping(
 struct dce110_opp *opp110,
 const struct clamping_and_pixel_encoding_params *params)
{
 REG_SET_2(FMT_CLAMP_CNTL, 0,
  FMT_CLAMP_DATA_EN, 0,
  FMT_CLAMP_COLOR_FORMAT, 0);

 switch (params->clamping_level) {
 case 132:
  break;
 case 129:
  REG_SET_2(FMT_CLAMP_CNTL, 0,
   FMT_CLAMP_DATA_EN, 1,
   FMT_CLAMP_COLOR_FORMAT, 1);
  break;
 case 131:
  REG_SET_2(FMT_CLAMP_CNTL, 0,
   FMT_CLAMP_DATA_EN, 1,
   FMT_CLAMP_COLOR_FORMAT, 2);
  break;
 case 130:
  REG_SET_2(FMT_CLAMP_CNTL, 0,
   FMT_CLAMP_DATA_EN, 1,
   FMT_CLAMP_COLOR_FORMAT, 3);
  break;
 case 128:

  REG_SET_2(FMT_CLAMP_CNTL, 0,
   FMT_CLAMP_DATA_EN, 1,
   FMT_CLAMP_COLOR_FORMAT, 7);


  REG_SET_2(FMT_CLAMP_COMPONENT_R, 0,
   FMT_CLAMP_LOWER_R, 0x10,
   FMT_CLAMP_UPPER_R, 0xFEF);

  REG_SET_2(FMT_CLAMP_COMPONENT_G, 0,
   FMT_CLAMP_LOWER_G, 0x10,
   FMT_CLAMP_UPPER_G, 0xFEF);

  REG_SET_2(FMT_CLAMP_COMPONENT_B, 0,
   FMT_CLAMP_LOWER_B, 0x10,
   FMT_CLAMP_UPPER_B, 0xFEF);
  break;
 default:
  break;
 }
}
