
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcn10_link_encoder {int dummy; } ;
struct dc_link_settings {scalar_t__ lane_count; } ;


 int DPHY_SCRAMBLER_ADVANCE ;
 int DP_CONFIG ;
 int DP_DPHY_SCRAM_CNTL ;
 int DP_UDI_LANES ;
 scalar_t__ LANE_COUNT_ONE ;
 int REG_SET (int ,int ,int ,scalar_t__) ;
 int REG_UPDATE (int ,int ,int) ;

void enc1_configure_encoder(
 struct dcn10_link_encoder *enc10,
 const struct dc_link_settings *link_settings)
{

 REG_SET(DP_CONFIG, 0,
   DP_UDI_LANES, link_settings->lane_count - LANE_COUNT_ONE);


 REG_UPDATE(DP_DPHY_SCRAM_CNTL, DPHY_SCRAMBLER_ADVANCE, 1);
}
