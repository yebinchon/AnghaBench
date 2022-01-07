
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcn10_link_encoder {int dummy; } ;


 int DPHY_ATEST_SEL_LANE0 ;
 int DPHY_ATEST_SEL_LANE1 ;
 int DPHY_ATEST_SEL_LANE2 ;
 int DPHY_ATEST_SEL_LANE3 ;
 int DP_DPHY_CNTL ;
 int REG_UPDATE_4 (int ,int ,int,int ,int,int ,int,int ,int) ;

__attribute__((used)) static void disable_prbs_symbols(
 struct dcn10_link_encoder *enc10,
 bool disable)
{



 REG_UPDATE_4(DP_DPHY_CNTL,
   DPHY_ATEST_SEL_LANE0, disable,
   DPHY_ATEST_SEL_LANE1, disable,
   DPHY_ATEST_SEL_LANE2, disable,
   DPHY_ATEST_SEL_LANE3, disable);
}
