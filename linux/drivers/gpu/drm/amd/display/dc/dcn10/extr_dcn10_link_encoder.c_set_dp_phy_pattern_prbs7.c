
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcn10_link_encoder {int dummy; } ;


 int DPHY_PRBS_EN ;
 int DPHY_PRBS_SEL ;
 int DP_DPHY_PRBS_CNTL ;
 int REG_UPDATE_2 (int ,int ,int ,int ,int) ;
 int disable_prbs_symbols (struct dcn10_link_encoder*,int) ;
 int enable_phy_bypass_mode (struct dcn10_link_encoder*,int) ;

__attribute__((used)) static void set_dp_phy_pattern_prbs7(
 struct dcn10_link_encoder *enc10)
{

 enable_phy_bypass_mode(enc10, 0);




 disable_prbs_symbols(enc10, 0);


 REG_UPDATE_2(DP_DPHY_PRBS_CNTL,
   DPHY_PRBS_SEL, 0,
   DPHY_PRBS_EN, 1);


 enable_phy_bypass_mode(enc10, 1);
}
