
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dss_pll {int id; TYPE_1__* dss; } ;
struct TYPE_2__ {int syscon_pll_ctrl_offset; int syscon_pll_ctrl; } ;


 int DSSERR (char*,int) ;



 int regmap_update_bits (int ,int ,int,unsigned int) ;

void dss_ctrl_pll_enable(struct dss_pll *pll, bool enable)
{
 unsigned int shift;
 unsigned int val;

 if (!pll->dss->syscon_pll_ctrl)
  return;

 val = !enable;

 switch (pll->id) {
 case 129:
  shift = 0;
  break;
 case 128:
  shift = 1;
  break;
 case 130:
  shift = 2;
  break;
 default:
  DSSERR("illegal DSS PLL ID %d\n", pll->id);
  return;
 }

 regmap_update_bits(pll->dss->syscon_pll_ctrl,
      pll->dss->syscon_pll_ctrl_offset,
      1 << shift, val << shift);
}
