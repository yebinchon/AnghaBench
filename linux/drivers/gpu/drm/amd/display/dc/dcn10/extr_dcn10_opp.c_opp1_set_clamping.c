
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcn10_opp {int dummy; } ;
struct clamping_and_pixel_encoding_params {int clamping_level; } ;







 int FMT_CLAMP_CNTL ;
 int FMT_CLAMP_COLOR_FORMAT ;
 int FMT_CLAMP_DATA_EN ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;

__attribute__((used)) static void opp1_set_clamping(
 struct dcn10_opp *oppn10,
 const struct clamping_and_pixel_encoding_params *params)
{
 REG_UPDATE_2(FMT_CLAMP_CNTL,
   FMT_CLAMP_DATA_EN, 0,
   FMT_CLAMP_COLOR_FORMAT, 0);

 switch (params->clamping_level) {
 case 132:
  REG_UPDATE_2(FMT_CLAMP_CNTL,
    FMT_CLAMP_DATA_EN, 1,
    FMT_CLAMP_COLOR_FORMAT, 0);
  break;
 case 129:
  REG_UPDATE_2(FMT_CLAMP_CNTL,
    FMT_CLAMP_DATA_EN, 1,
    FMT_CLAMP_COLOR_FORMAT, 1);
  break;
 case 131:
  REG_UPDATE_2(FMT_CLAMP_CNTL,
    FMT_CLAMP_DATA_EN, 1,
    FMT_CLAMP_COLOR_FORMAT, 2);

  break;
 case 130:
  REG_UPDATE_2(FMT_CLAMP_CNTL,
    FMT_CLAMP_DATA_EN, 1,
    FMT_CLAMP_COLOR_FORMAT, 3);
  break;
 case 128:

 default:
  break;
 }

}
