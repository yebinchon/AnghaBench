
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_i2c_dev {int pclk; int clk; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;

int i2c_dw_prepare_clk(struct dw_i2c_dev *dev, bool prepare)
{
 int ret;

 if (IS_ERR(dev->clk))
  return PTR_ERR(dev->clk);

 if (prepare) {

  ret = clk_prepare_enable(dev->pclk);
  if (ret)
   return ret;

  ret = clk_prepare_enable(dev->clk);
  if (ret)
   clk_disable_unprepare(dev->pclk);

  return ret;
 }

 clk_disable_unprepare(dev->clk);
 clk_disable_unprepare(dev->pclk);

 return 0;
}
