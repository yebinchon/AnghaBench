
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun6i_drc {void* reset; void* bus_clk; void* mod_clk; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int clk_disable_unprepare (void*) ;
 int clk_prepare_enable (void*) ;
 int dev_err (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct sun6i_drc*) ;
 void* devm_clk_get (struct device*,char*) ;
 struct sun6i_drc* devm_kzalloc (struct device*,int,int ) ;
 void* devm_reset_control_get (struct device*,int *) ;
 int reset_control_assert (void*) ;
 int reset_control_deassert (void*) ;

__attribute__((used)) static int sun6i_drc_bind(struct device *dev, struct device *master,
    void *data)
{
 struct sun6i_drc *drc;
 int ret;

 drc = devm_kzalloc(dev, sizeof(*drc), GFP_KERNEL);
 if (!drc)
  return -ENOMEM;
 dev_set_drvdata(dev, drc);

 drc->reset = devm_reset_control_get(dev, ((void*)0));
 if (IS_ERR(drc->reset)) {
  dev_err(dev, "Couldn't get our reset line\n");
  return PTR_ERR(drc->reset);
 }

 ret = reset_control_deassert(drc->reset);
 if (ret) {
  dev_err(dev, "Couldn't deassert our reset line\n");
  return ret;
 }

 drc->bus_clk = devm_clk_get(dev, "ahb");
 if (IS_ERR(drc->bus_clk)) {
  dev_err(dev, "Couldn't get our bus clock\n");
  ret = PTR_ERR(drc->bus_clk);
  goto err_assert_reset;
 }
 clk_prepare_enable(drc->bus_clk);

 drc->mod_clk = devm_clk_get(dev, "mod");
 if (IS_ERR(drc->mod_clk)) {
  dev_err(dev, "Couldn't get our mod clock\n");
  ret = PTR_ERR(drc->mod_clk);
  goto err_disable_bus_clk;
 }
 clk_prepare_enable(drc->mod_clk);

 return 0;

err_disable_bus_clk:
 clk_disable_unprepare(drc->bus_clk);
err_assert_reset:
 reset_control_assert(drc->reset);
 return ret;
}
