
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_encoder {int dummy; } ;
struct dcn10_link_encoder {int dummy; } ;


 int DC_HPD_CONTROL ;
 int DC_HPD_EN ;
 int HPD_REG_UPDATE (int ,int ,int ) ;
 struct dcn10_link_encoder* TO_DCN10_LINK_ENC (struct link_encoder*) ;

void dcn10_link_encoder_disable_hpd(struct link_encoder *enc)
{
 struct dcn10_link_encoder *enc10 = TO_DCN10_LINK_ENC(enc);

 HPD_REG_UPDATE(DC_HPD_CONTROL,
   DC_HPD_EN, 0);
}
