
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enum_id; } ;
struct link_encoder {TYPE_1__ id; } ;
struct dcn10_link_encoder {int dummy; } ;


 int DC_LOG_DSC (char*,char*,int ) ;
 int DPHY_FEC_EN ;
 int DP_DPHY_CNTL ;
 int REG_UPDATE (int ,int ,int) ;
 struct dcn10_link_encoder* TO_DCN10_LINK_ENC (struct link_encoder*) ;

void enc2_fec_set_enable(struct link_encoder *enc, bool enable)
{
 struct dcn10_link_encoder *enc10 = TO_DCN10_LINK_ENC(enc);




 REG_UPDATE(DP_DPHY_CNTL, DPHY_FEC_EN, enable);
}
