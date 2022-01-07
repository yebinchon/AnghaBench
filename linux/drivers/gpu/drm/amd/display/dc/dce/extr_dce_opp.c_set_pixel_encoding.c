
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dce110_opp {TYPE_1__* opp_mask; } ;
struct clamping_and_pixel_encoding_params {scalar_t__ pixel_encoding; } ;
struct TYPE_2__ {scalar_t__ FMT_CBCR_BIT_REDUCTION_BYPASS; } ;


 int FMT_CBCR_BIT_REDUCTION_BYPASS ;
 int FMT_CONTROL ;
 int FMT_PIXEL_ENCODING ;
 int FMT_SUBSAMPLING_MODE ;
 int FMT_SUBSAMPLING_ORDER ;
 scalar_t__ PIXEL_ENCODING_YCBCR420 ;
 scalar_t__ PIXEL_ENCODING_YCBCR422 ;
 int REG_UPDATE_2 (int ,int ,int,int ,int ) ;
 int REG_UPDATE_3 (int ,int ,int,int ,int,int ,int) ;

__attribute__((used)) static void set_pixel_encoding(
 struct dce110_opp *opp110,
 const struct clamping_and_pixel_encoding_params *params)
{
 if (opp110->opp_mask->FMT_CBCR_BIT_REDUCTION_BYPASS)
  REG_UPDATE_3(FMT_CONTROL,
    FMT_PIXEL_ENCODING, 0,
    FMT_SUBSAMPLING_MODE, 0,
    FMT_CBCR_BIT_REDUCTION_BYPASS, 0);
 else
  REG_UPDATE_2(FMT_CONTROL,
    FMT_PIXEL_ENCODING, 0,
    FMT_SUBSAMPLING_MODE, 0);

 if (params->pixel_encoding == PIXEL_ENCODING_YCBCR422) {
  REG_UPDATE_2(FMT_CONTROL,
    FMT_PIXEL_ENCODING, 1,
    FMT_SUBSAMPLING_ORDER, 0);
 }
 if (params->pixel_encoding == PIXEL_ENCODING_YCBCR420) {
  REG_UPDATE_3(FMT_CONTROL,
    FMT_PIXEL_ENCODING, 2,
    FMT_SUBSAMPLING_MODE, 2,
    FMT_CBCR_BIT_REDUCTION_BYPASS, 1);
 }

}
