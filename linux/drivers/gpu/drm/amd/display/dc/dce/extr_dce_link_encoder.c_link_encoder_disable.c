
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce110_link_encoder {int dummy; } ;


 int DPHY_TRAINING_PATTERN_SEL ;
 int DP_DPHY_TRAINING_PATTERN_SEL ;
 int DP_LINK_CNTL ;
 int DP_LINK_TRAINING_COMPLETE ;
 int DP_PANEL_MODE_DEFAULT ;
 int REG_SET (int ,int ,int ,int ) ;
 int REG_UPDATE (int ,int ,int ) ;
 int setup_panel_mode (struct dce110_link_encoder*,int ) ;

__attribute__((used)) static void link_encoder_disable(struct dce110_link_encoder *enc110)
{

 REG_SET(DP_DPHY_TRAINING_PATTERN_SEL, 0,
   DPHY_TRAINING_PATTERN_SEL, 0);


 REG_UPDATE(DP_LINK_CNTL, DP_LINK_TRAINING_COMPLETE, 0);


 setup_panel_mode(enc110, DP_PANEL_MODE_DEFAULT);
}
