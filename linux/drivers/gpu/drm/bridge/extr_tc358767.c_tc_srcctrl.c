
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int num_lanes; int rate; } ;
struct TYPE_3__ {TYPE_2__ base; scalar_t__ spread; scalar_t__ scrambler_dis; } ;
struct tc_data {TYPE_1__ link; } ;


 int DP0_SRCCTRL_BW27 ;
 int DP0_SRCCTRL_EN810B ;
 int DP0_SRCCTRL_LANESKEW ;
 int DP0_SRCCTRL_LANES_2 ;
 int DP0_SRCCTRL_NOTP ;
 int DP0_SRCCTRL_SCRMBLDIS ;
 int DP0_SRCCTRL_SSCG ;

__attribute__((used)) static u32 tc_srcctrl(struct tc_data *tc)
{




 u32 reg = DP0_SRCCTRL_NOTP | DP0_SRCCTRL_LANESKEW | DP0_SRCCTRL_EN810B;

 if (tc->link.scrambler_dis)
  reg |= DP0_SRCCTRL_SCRMBLDIS;
 if (tc->link.spread)
  reg |= DP0_SRCCTRL_SSCG;
 if (tc->link.base.num_lanes == 2)
  reg |= DP0_SRCCTRL_LANES_2;
 if (tc->link.base.rate != 162000)
  reg |= DP0_SRCCTRL_BW27;
 return reg;
}
