
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce110_link_encoder {int dummy; } ;


 int DPHY_BYPASS ;
 int DP_DPHY_CNTL ;
 int REG_UPDATE (int ,int ,int) ;

__attribute__((used)) static void enable_phy_bypass_mode(
 struct dce110_link_encoder *enc110,
 bool enable)
{



 REG_UPDATE(DP_DPHY_CNTL, DPHY_BYPASS, enable);

}
