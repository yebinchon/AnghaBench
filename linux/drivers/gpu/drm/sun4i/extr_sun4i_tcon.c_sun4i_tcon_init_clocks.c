
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun4i_tcon {void* sclk1; TYPE_1__* quirks; void* sclk0; void* clk; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ has_channel_1; scalar_t__ has_channel_0; } ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int clk_prepare_enable (void*) ;
 int dev_err (struct device*,char*) ;
 void* devm_clk_get (struct device*,char*) ;

__attribute__((used)) static int sun4i_tcon_init_clocks(struct device *dev,
      struct sun4i_tcon *tcon)
{
 tcon->clk = devm_clk_get(dev, "ahb");
 if (IS_ERR(tcon->clk)) {
  dev_err(dev, "Couldn't get the TCON bus clock\n");
  return PTR_ERR(tcon->clk);
 }
 clk_prepare_enable(tcon->clk);

 if (tcon->quirks->has_channel_0) {
  tcon->sclk0 = devm_clk_get(dev, "tcon-ch0");
  if (IS_ERR(tcon->sclk0)) {
   dev_err(dev, "Couldn't get the TCON channel 0 clock\n");
   return PTR_ERR(tcon->sclk0);
  }
 }
 clk_prepare_enable(tcon->sclk0);

 if (tcon->quirks->has_channel_1) {
  tcon->sclk1 = devm_clk_get(dev, "tcon-ch1");
  if (IS_ERR(tcon->sclk1)) {
   dev_err(dev, "Couldn't get the TCON channel 1 clock\n");
   return PTR_ERR(tcon->sclk1);
  }
 }

 return 0;
}
