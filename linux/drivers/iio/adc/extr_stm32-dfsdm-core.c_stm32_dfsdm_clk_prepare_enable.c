
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_dfsdm {int dummy; } ;
struct dfsdm_priv {int clk; int aclk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct dfsdm_priv* to_stm32_dfsdm_priv (struct stm32_dfsdm*) ;

__attribute__((used)) static int stm32_dfsdm_clk_prepare_enable(struct stm32_dfsdm *dfsdm)
{
 struct dfsdm_priv *priv = to_stm32_dfsdm_priv(dfsdm);
 int ret;

 ret = clk_prepare_enable(priv->clk);
 if (ret || !priv->aclk)
  return ret;

 ret = clk_prepare_enable(priv->aclk);
 if (ret)
  clk_disable_unprepare(priv->clk);

 return ret;
}
