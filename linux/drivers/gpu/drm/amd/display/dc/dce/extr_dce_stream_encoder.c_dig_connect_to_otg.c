
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_encoder {int dummy; } ;
struct dce110_stream_encoder {int dummy; } ;


 struct dce110_stream_encoder* DCE110STRENC_FROM_STRENC (struct stream_encoder*) ;
 int DIG_FE_CNTL ;
 int DIG_SOURCE_SELECT ;
 int REG_UPDATE (int ,int ,int) ;

__attribute__((used)) static void dig_connect_to_otg(
 struct stream_encoder *enc,
 int tg_inst)
{
 struct dce110_stream_encoder *enc110 = DCE110STRENC_FROM_STRENC(enc);

 REG_UPDATE(DIG_FE_CNTL, DIG_SOURCE_SELECT, tg_inst);
}
