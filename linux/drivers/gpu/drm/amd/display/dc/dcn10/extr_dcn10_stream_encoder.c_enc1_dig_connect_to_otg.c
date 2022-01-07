
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_encoder {int dummy; } ;
struct dcn10_stream_encoder {int dummy; } ;


 struct dcn10_stream_encoder* DCN10STRENC_FROM_STRENC (struct stream_encoder*) ;
 int DIG_FE_CNTL ;
 int DIG_SOURCE_SELECT ;
 int REG_UPDATE (int ,int ,int) ;

void enc1_dig_connect_to_otg(
 struct stream_encoder *enc,
 int tg_inst)
{
 struct dcn10_stream_encoder *enc1 = DCN10STRENC_FROM_STRENC(enc);

 REG_UPDATE(DIG_FE_CNTL, DIG_SOURCE_SELECT, tg_inst);
}
