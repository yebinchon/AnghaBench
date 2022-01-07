
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dss_pll {int clkin; scalar_t__ regulator; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* enable ) (struct dss_pll*) ;} ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int regulator_disable (scalar_t__) ;
 int regulator_enable (scalar_t__) ;
 int stub1 (struct dss_pll*) ;

int dss_pll_enable(struct dss_pll *pll)
{
 int r;

 r = clk_prepare_enable(pll->clkin);
 if (r)
  return r;

 if (pll->regulator) {
  r = regulator_enable(pll->regulator);
  if (r)
   goto err_reg;
 }

 r = pll->ops->enable(pll);
 if (r)
  goto err_enable;

 return 0;

err_enable:
 if (pll->regulator)
  regulator_disable(pll->regulator);
err_reg:
 clk_disable_unprepare(pll->clkin);
 return r;
}
