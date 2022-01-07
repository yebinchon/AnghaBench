
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_encoder {int dummy; } ;
struct dcn10_link_encoder {int dummy; } ;


 int AUX_DPHY_RX_CONTROL0 ;
 int AUX_DPHY_TX_CONTROL ;
 int AUX_REG_WRITE (int ,int) ;
 int REG_UPDATE (int ,int ,int) ;
 int TMDS_CTL0 ;
 int TMDS_CTL_BITS ;
 struct dcn10_link_encoder* TO_DCN10_LINK_ENC (struct link_encoder*) ;
 int dcn10_aux_initialize (struct dcn10_link_encoder*) ;

void enc2_hw_init(struct link_encoder *enc)
{
 struct dcn10_link_encoder *enc10 = TO_DCN10_LINK_ENC(enc);
 AUX_REG_WRITE(AUX_DPHY_RX_CONTROL0, 0x103d1110);

 AUX_REG_WRITE(AUX_DPHY_TX_CONTROL, 0x21c7a);
 REG_UPDATE(TMDS_CTL_BITS, TMDS_CTL0, 1);

 dcn10_aux_initialize(enc10);
}
