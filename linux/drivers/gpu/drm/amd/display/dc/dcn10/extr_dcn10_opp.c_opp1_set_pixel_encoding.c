
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcn10_opp {int dummy; } ;
struct clamping_and_pixel_encoding_params {int pixel_encoding; } ;


 int FMT_CONTROL ;
 int FMT_PIXEL_ENCODING ;




 int REG_UPDATE (int ,int ,int) ;

__attribute__((used)) static void opp1_set_pixel_encoding(
 struct dcn10_opp *oppn10,
 const struct clamping_and_pixel_encoding_params *params)
{
 switch (params->pixel_encoding) {

 case 131:
 case 128:
  REG_UPDATE(FMT_CONTROL, FMT_PIXEL_ENCODING, 0);
  break;
 case 129:
  REG_UPDATE(FMT_CONTROL, FMT_PIXEL_ENCODING, 1);
  break;
 case 130:
  REG_UPDATE(FMT_CONTROL, FMT_PIXEL_ENCODING, 2);
  break;
 default:
  break;
 }
}
