
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcn10_link_encoder {int dummy; } ;


 int DPHY_PRBS_EN ;
 int DP_DPHY_PRBS_CNTL ;
 int REG_UPDATE (int ,int ,int ) ;

__attribute__((used)) static void disable_prbs_mode(
 struct dcn10_link_encoder *enc10)
{
 REG_UPDATE(DP_DPHY_PRBS_CNTL, DPHY_PRBS_EN, 0);
}
