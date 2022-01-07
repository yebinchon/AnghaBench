
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct stream_encoder {int dummy; } ;
struct dce110_stream_encoder {int dummy; } ;


 struct dce110_stream_encoder* DCE110STRENC_FROM_STRENC (struct stream_encoder*) ;
 int DIG_FE_CNTL ;
 int DIG_SOURCE_SELECT ;
 int REG_GET (int ,int ,unsigned int*) ;

__attribute__((used)) static unsigned int dig_source_otg(
 struct stream_encoder *enc)
{
 uint32_t tg_inst = 0;
 struct dce110_stream_encoder *enc110 = DCE110STRENC_FROM_STRENC(enc);

 REG_GET(DIG_FE_CNTL, DIG_SOURCE_SELECT, &tg_inst);

 return tg_inst;
}
