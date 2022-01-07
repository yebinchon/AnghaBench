
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct adv7511 {int * cec_clk; int cec_clk_freq; } ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int clk_get_rate (int *) ;
 int clk_prepare_enable (int *) ;
 int * devm_clk_get (struct device*,char*) ;

__attribute__((used)) static int adv7511_cec_parse_dt(struct device *dev, struct adv7511 *adv7511)
{
 adv7511->cec_clk = devm_clk_get(dev, "cec");
 if (IS_ERR(adv7511->cec_clk)) {
  int ret = PTR_ERR(adv7511->cec_clk);

  adv7511->cec_clk = ((void*)0);
  return ret;
 }
 clk_prepare_enable(adv7511->cec_clk);
 adv7511->cec_clk_freq = clk_get_rate(adv7511->cec_clk);
 return 0;
}
