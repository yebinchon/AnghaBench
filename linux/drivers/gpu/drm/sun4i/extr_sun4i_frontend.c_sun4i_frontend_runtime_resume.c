
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_frontend {int regs; int reset; int ram_clk; int mod_clk; int bus_clk; } ;
struct device {int dummy; } ;


 int SUN4I_FRONTEND_EN_EN ;
 int SUN4I_FRONTEND_EN_REG ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int) ;
 int dev_err (struct device*,char*) ;
 struct sun4i_frontend* dev_get_drvdata (struct device*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int reset_control_reset (int ) ;
 int sun4i_frontend_scaler_init (struct sun4i_frontend*) ;

__attribute__((used)) static int sun4i_frontend_runtime_resume(struct device *dev)
{
 struct sun4i_frontend *frontend = dev_get_drvdata(dev);
 int ret;

 clk_set_rate(frontend->mod_clk, 300000000);

 clk_prepare_enable(frontend->bus_clk);
 clk_prepare_enable(frontend->mod_clk);
 clk_prepare_enable(frontend->ram_clk);

 ret = reset_control_reset(frontend->reset);
 if (ret) {
  dev_err(dev, "Couldn't reset our device\n");
  return ret;
 }

 regmap_update_bits(frontend->regs, SUN4I_FRONTEND_EN_REG,
      SUN4I_FRONTEND_EN_EN,
      SUN4I_FRONTEND_EN_EN);

 sun4i_frontend_scaler_init(frontend);

 return 0;
}
