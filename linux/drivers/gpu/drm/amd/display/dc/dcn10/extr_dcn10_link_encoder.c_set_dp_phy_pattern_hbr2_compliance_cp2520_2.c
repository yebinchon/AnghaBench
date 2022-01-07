
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* funcs; } ;
struct dcn10_link_encoder {TYPE_2__ base; } ;
struct TYPE_3__ {int (* setup ) (TYPE_2__*,int ) ;} ;


 int ASSERT (int) ;
 int DPHY_SCRAMBLER_BS_COUNT ;
 int DP_DPHY_HBR2_PATTERN_CONTROL ;
 int DP_DPHY_SCRAM_CNTL ;
 int DP_IDLE_BS_INTERVAL ;
 int DP_LINK_FRAMING_CNTL ;
 int DP_PANEL_MODE_DEFAULT ;
 int DP_VBID_DISABLE ;
 int DP_VID_ENHANCED_FRAME_MODE ;
 int DP_VID_STREAM_CNTL ;
 int DP_VID_STREAM_ENABLE ;
 scalar_t__ REG (int ) ;
 int REG_UPDATE (int ,int ,unsigned int) ;
 int REG_UPDATE_3 (int ,int ,int,int ,int,int ,int) ;
 int SIGNAL_TYPE_DISPLAY_PORT ;
 int enable_phy_bypass_mode (struct dcn10_link_encoder*,int) ;
 int set_link_training_complete (struct dcn10_link_encoder*,int) ;
 int setup_panel_mode (struct dcn10_link_encoder*,int ) ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static void set_dp_phy_pattern_hbr2_compliance_cp2520_2(
 struct dcn10_link_encoder *enc10,
 unsigned int cp2520_pattern)
{
 enable_phy_bypass_mode(enc10, 0);


 enc10->base.funcs->setup(&enc10->base, SIGNAL_TYPE_DISPLAY_PORT);


 setup_panel_mode(enc10, DP_PANEL_MODE_DEFAULT);





 REG_UPDATE_3(DP_LINK_FRAMING_CNTL,
   DP_IDLE_BS_INTERVAL, 0xFC,
   DP_VBID_DISABLE, 1,
   DP_VID_ENHANCED_FRAME_MODE, 1);


 REG_UPDATE(DP_DPHY_SCRAM_CNTL, DPHY_SCRAMBLER_BS_COUNT, 0);


 if (REG(DP_DPHY_HBR2_PATTERN_CONTROL))
  REG_UPDATE(DP_DPHY_HBR2_PATTERN_CONTROL,
    DP_DPHY_HBR2_PATTERN_CONTROL, cp2520_pattern);
 else

  ASSERT(cp2520_pattern == 2);


 set_link_training_complete(enc10, 1);


 REG_UPDATE(DP_VID_STREAM_CNTL, DP_VID_STREAM_ENABLE, 0);


 enable_phy_bypass_mode(enc10, 0);
}
