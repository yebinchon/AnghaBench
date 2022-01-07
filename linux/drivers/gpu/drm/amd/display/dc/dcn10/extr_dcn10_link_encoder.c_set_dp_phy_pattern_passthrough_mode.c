
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcn10_link_encoder {int dummy; } ;
typedef enum dp_panel_mode { ____Placeholder_dp_panel_mode } dp_panel_mode ;


 int DPHY_SCRAMBLER_BS_COUNT ;
 int DP_DPHY_SCRAM_CNTL ;
 int DP_IDLE_BS_INTERVAL ;
 int DP_LINK_FRAMING_CNTL ;
 int DP_VBID_DISABLE ;
 int DP_VID_ENHANCED_FRAME_MODE ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_3 (int ,int ,int,int ,int ,int ,int) ;
 int disable_prbs_mode (struct dcn10_link_encoder*) ;
 int enable_phy_bypass_mode (struct dcn10_link_encoder*,int) ;
 int set_link_training_complete (struct dcn10_link_encoder*,int) ;
 int setup_panel_mode (struct dcn10_link_encoder*,int) ;

__attribute__((used)) static void set_dp_phy_pattern_passthrough_mode(
 struct dcn10_link_encoder *enc10,
 enum dp_panel_mode panel_mode)
{

 setup_panel_mode(enc10, panel_mode);




 REG_UPDATE_3(DP_LINK_FRAMING_CNTL,
   DP_IDLE_BS_INTERVAL, 0x2000,
   DP_VBID_DISABLE, 0,
   DP_VID_ENHANCED_FRAME_MODE, 1);

 REG_UPDATE(DP_DPHY_SCRAM_CNTL, DPHY_SCRAMBLER_BS_COUNT, 0x1FF);


 set_link_training_complete(enc10, 1);


 enable_phy_bypass_mode(enc10, 0);


 disable_prbs_mode(enc10);
}
