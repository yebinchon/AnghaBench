
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_device {int * clk_bus; int * clk_gpu; int dev; int * reset; } ;


 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int clk_disable_unprepare (int *) ;
 int clk_prepare_enable (int *) ;
 int dev_err (int ,char*,int) ;
 void* devm_clk_get (int ,char*) ;
 int * devm_reset_control_get_optional (int ,int *) ;
 int reset_control_deassert (int *) ;

__attribute__((used)) static int lima_clk_init(struct lima_device *dev)
{
 int err;

 dev->clk_bus = devm_clk_get(dev->dev, "bus");
 if (IS_ERR(dev->clk_bus)) {
  err = PTR_ERR(dev->clk_bus);
  if (err != -EPROBE_DEFER)
   dev_err(dev->dev, "get bus clk failed %d\n", err);
  return err;
 }

 dev->clk_gpu = devm_clk_get(dev->dev, "core");
 if (IS_ERR(dev->clk_gpu)) {
  err = PTR_ERR(dev->clk_gpu);
  if (err != -EPROBE_DEFER)
   dev_err(dev->dev, "get core clk failed %d\n", err);
  return err;
 }

 err = clk_prepare_enable(dev->clk_bus);
 if (err)
  return err;

 err = clk_prepare_enable(dev->clk_gpu);
 if (err)
  goto error_out0;

 dev->reset = devm_reset_control_get_optional(dev->dev, ((void*)0));
 if (IS_ERR(dev->reset)) {
  err = PTR_ERR(dev->reset);
  if (err != -EPROBE_DEFER)
   dev_err(dev->dev, "get reset controller failed %d\n",
    err);
  goto error_out1;
 } else if (dev->reset != ((void*)0)) {
  err = reset_control_deassert(dev->reset);
  if (err) {
   dev_err(dev->dev,
    "reset controller deassert failed %d\n", err);
   goto error_out1;
  }
 }

 return 0;

error_out1:
 clk_disable_unprepare(dev->clk_gpu);
error_out0:
 clk_disable_unprepare(dev->clk_bus);
 return err;
}
