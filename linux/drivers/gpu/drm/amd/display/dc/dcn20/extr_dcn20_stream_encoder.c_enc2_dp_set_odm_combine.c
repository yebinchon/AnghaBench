
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_encoder {int dummy; } ;
struct dcn10_stream_encoder {int dummy; } ;


 struct dcn10_stream_encoder* DCN10STRENC_FROM_STRENC (struct stream_encoder*) ;
 int DP_PIXEL_COMBINE ;
 int DP_PIXEL_FORMAT ;
 int REG_UPDATE (int ,int ,int) ;

__attribute__((used)) static void enc2_dp_set_odm_combine(
 struct stream_encoder *enc,
 bool odm_combine)
{
 struct dcn10_stream_encoder *enc1 = DCN10STRENC_FROM_STRENC(enc);

 REG_UPDATE(DP_PIXEL_FORMAT, DP_PIXEL_COMBINE, odm_combine);
}
