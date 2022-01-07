
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_encoder {int dummy; } ;
struct dcn10_link_encoder {int dummy; } ;


 int DPHY_FEC_READY_SHADOW ;
 int DP_DPHY_CNTL ;
 int REG_UPDATE (int ,int ,int) ;
 struct dcn10_link_encoder* TO_DCN10_LINK_ENC (struct link_encoder*) ;

void enc2_fec_set_ready(struct link_encoder *enc, bool ready)
{
 struct dcn10_link_encoder *enc10 = TO_DCN10_LINK_ENC(enc);

 REG_UPDATE(DP_DPHY_CNTL, DPHY_FEC_READY_SHADOW, ready);
}
