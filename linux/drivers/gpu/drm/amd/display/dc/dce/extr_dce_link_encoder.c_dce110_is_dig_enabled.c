
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct link_encoder {int dummy; } ;
struct dce110_link_encoder {int dummy; } ;


 int DIG_BE_EN_CNTL ;
 int DIG_ENABLE ;
 int REG_GET (int ,int ,int*) ;
 struct dce110_link_encoder* TO_DCE110_LINK_ENC (struct link_encoder*) ;

bool dce110_is_dig_enabled(struct link_encoder *enc)
{
 struct dce110_link_encoder *enc110 = TO_DCE110_LINK_ENC(enc);
 uint32_t value;

 REG_GET(DIG_BE_EN_CNTL, DIG_ENABLE, &value);
 return value;
}
