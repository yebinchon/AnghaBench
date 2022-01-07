
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct imx_i2c_struct {unsigned int cur_clk; unsigned int bitrate; unsigned int ifdr; unsigned int disable_delay; TYPE_2__ adapter; TYPE_1__* hwdata; } ;
struct imx_i2c_clk_pair {unsigned int div; unsigned int val; } ;
struct TYPE_3__ {int ndivs; struct imx_i2c_clk_pair* clk_div; } ;


 int dev_dbg (int *,char*,unsigned int,unsigned int) ;

__attribute__((used)) static void i2c_imx_set_clk(struct imx_i2c_struct *i2c_imx,
       unsigned int i2c_clk_rate)
{
 struct imx_i2c_clk_pair *i2c_clk_div = i2c_imx->hwdata->clk_div;
 unsigned int div;
 int i;


 if (i2c_imx->cur_clk == i2c_clk_rate)
  return;

 i2c_imx->cur_clk = i2c_clk_rate;

 div = (i2c_clk_rate + i2c_imx->bitrate - 1) / i2c_imx->bitrate;
 if (div < i2c_clk_div[0].div)
  i = 0;
 else if (div > i2c_clk_div[i2c_imx->hwdata->ndivs - 1].div)
  i = i2c_imx->hwdata->ndivs - 1;
 else
  for (i = 0; i2c_clk_div[i].div < div; i++)
   ;


 i2c_imx->ifdr = i2c_clk_div[i].val;







 i2c_imx->disable_delay = (500000U * i2c_clk_div[i].div
  + (i2c_clk_rate / 2) - 1) / (i2c_clk_rate / 2);







}
