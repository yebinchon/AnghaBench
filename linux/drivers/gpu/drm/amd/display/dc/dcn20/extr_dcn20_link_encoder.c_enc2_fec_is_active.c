
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct link_encoder {int dummy; } ;
struct dcn10_link_encoder {int dummy; } ;


 int DPHY_FEC_ACTIVE_STATUS ;
 int DP_DPHY_CNTL ;
 int REG_GET (int ,int ,scalar_t__*) ;
 struct dcn10_link_encoder* TO_DCN10_LINK_ENC (struct link_encoder*) ;

bool enc2_fec_is_active(struct link_encoder *enc)
{
 uint32_t active = 0;
 struct dcn10_link_encoder *enc10 = TO_DCN10_LINK_ENC(enc);

 REG_GET(DP_DPHY_CNTL, DPHY_FEC_ACTIVE_STATUS, &active);

 return (active != 0);
}
