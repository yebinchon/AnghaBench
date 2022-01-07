
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int of_node; int * funcs; } ;
struct TYPE_3__ {char* name; int transfer; struct device* dev; } ;
struct tc_data {int hpd_pin; int have_irq; int rev; int assr; TYPE_2__ bridge; TYPE_1__ aux; struct device* dev; void* regmap; void* refclk; void* reset_gpio; void* sd_gpio; int panel; } ;
struct i2c_device_id {int dummy; } ;
struct device {int of_node; } ;
struct i2c_client {int irq; struct device dev; } ;


 int BIT (int) ;
 int EINVAL ;
 int ENBBM ;
 int ENBDSIRX ;
 int ENBHDCP ;
 int ENBLCD0 ;
 int ENBREG ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 int GPIOD_OUT_LOW ;
 int GPIOM ;
 int INTCTL_G ;
 int INT_GP0_LCNT ;
 int INT_GP1_LCNT ;
 int INT_GPIO_H (int) ;
 int INT_GPIO_LC (int) ;
 int INT_SYSERR ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int SYSRSTENB ;
 int TC_IDREG ;
 int clk_get_rate (void*) ;
 int dev_err (struct device*,char*,...) ;
 void* devm_clk_get (struct device*,char*) ;
 void* devm_gpiod_get_optional (struct device*,char*,int ) ;
 struct tc_data* devm_kzalloc (struct device*,int,int ) ;
 void* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_request_threaded_irq (struct device*,int ,int *,int ,int ,char*,struct tc_data*) ;
 int drm_bridge_add (TYPE_2__*) ;
 int drm_dp_aux_register (TYPE_1__*) ;
 int drm_of_find_panel_or_bridge (int ,int,int ,int *,int *) ;
 int gpiod_set_value_cansleep (void*,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct tc_data*) ;
 int of_property_read_u32 (int ,char*,int*) ;
 int regmap_read (void*,int ,int*) ;
 int regmap_update_bits (void*,int,int,int) ;
 int regmap_write (void*,int,int) ;
 int tc_aux_link_setup (struct tc_data*) ;
 int tc_aux_transfer ;
 int tc_bridge_funcs ;
 int tc_irq_handler ;
 int tc_regmap_config ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tc_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct tc_data *tc;
 int ret;

 tc = devm_kzalloc(dev, sizeof(*tc), GFP_KERNEL);
 if (!tc)
  return -ENOMEM;

 tc->dev = dev;


 ret = drm_of_find_panel_or_bridge(dev->of_node, 2, 0, &tc->panel, ((void*)0));
 if (ret && ret != -ENODEV)
  return ret;


 tc->sd_gpio = devm_gpiod_get_optional(dev, "shutdown", GPIOD_OUT_HIGH);
 if (IS_ERR(tc->sd_gpio))
  return PTR_ERR(tc->sd_gpio);

 if (tc->sd_gpio) {
  gpiod_set_value_cansleep(tc->sd_gpio, 0);
  usleep_range(5000, 10000);
 }


 tc->reset_gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
 if (IS_ERR(tc->reset_gpio))
  return PTR_ERR(tc->reset_gpio);

 if (tc->reset_gpio) {
  gpiod_set_value_cansleep(tc->reset_gpio, 1);
  usleep_range(5000, 10000);
 }

 tc->refclk = devm_clk_get(dev, "ref");
 if (IS_ERR(tc->refclk)) {
  ret = PTR_ERR(tc->refclk);
  dev_err(dev, "Failed to get refclk: %d\n", ret);
  return ret;
 }

 tc->regmap = devm_regmap_init_i2c(client, &tc_regmap_config);
 if (IS_ERR(tc->regmap)) {
  ret = PTR_ERR(tc->regmap);
  dev_err(dev, "Failed to initialize regmap: %d\n", ret);
  return ret;
 }

 ret = of_property_read_u32(dev->of_node, "toshiba,hpd-pin",
       &tc->hpd_pin);
 if (ret) {
  tc->hpd_pin = -ENODEV;
 } else {
  if (tc->hpd_pin < 0 || tc->hpd_pin > 1) {
   dev_err(dev, "failed to parse HPD number\n");
   return ret;
  }
 }

 if (client->irq > 0) {

  regmap_write(tc->regmap, INTCTL_G, INT_SYSERR);

  ret = devm_request_threaded_irq(dev, client->irq,
      ((void*)0), tc_irq_handler,
      IRQF_ONESHOT,
      "tc358767-irq", tc);
  if (ret) {
   dev_err(dev, "failed to register dp interrupt\n");
   return ret;
  }

  tc->have_irq = 1;
 }

 ret = regmap_read(tc->regmap, TC_IDREG, &tc->rev);
 if (ret) {
  dev_err(tc->dev, "can not read device ID: %d\n", ret);
  return ret;
 }

 if ((tc->rev != 0x6601) && (tc->rev != 0x6603)) {
  dev_err(tc->dev, "invalid device ID: 0x%08x\n", tc->rev);
  return -EINVAL;
 }

 tc->assr = (tc->rev == 0x6601);

 if (!tc->reset_gpio) {






  regmap_update_bits(tc->regmap, SYSRSTENB,
    ENBLCD0 | ENBBM | ENBDSIRX | ENBREG | ENBHDCP,
    0);
  regmap_update_bits(tc->regmap, SYSRSTENB,
    ENBLCD0 | ENBBM | ENBDSIRX | ENBREG | ENBHDCP,
    ENBLCD0 | ENBBM | ENBDSIRX | ENBREG | ENBHDCP);
  usleep_range(5000, 10000);
 }

 if (tc->hpd_pin >= 0) {
  u32 lcnt_reg = tc->hpd_pin == 0 ? INT_GP0_LCNT : INT_GP1_LCNT;
  u32 h_lc = INT_GPIO_H(tc->hpd_pin) | INT_GPIO_LC(tc->hpd_pin);


  regmap_write(tc->regmap, lcnt_reg,
        clk_get_rate(tc->refclk) * 2 / 1000);

  regmap_write(tc->regmap, GPIOM, BIT(tc->hpd_pin));

  if (tc->have_irq) {

   regmap_update_bits(tc->regmap, INTCTL_G, h_lc, h_lc);
  }
 }

 ret = tc_aux_link_setup(tc);
 if (ret)
  return ret;


 tc->aux.name = "TC358767 AUX i2c adapter";
 tc->aux.dev = tc->dev;
 tc->aux.transfer = tc_aux_transfer;
 ret = drm_dp_aux_register(&tc->aux);
 if (ret)
  return ret;

 tc->bridge.funcs = &tc_bridge_funcs;
 tc->bridge.of_node = dev->of_node;
 drm_bridge_add(&tc->bridge);

 i2c_set_clientdata(client, tc);

 return 0;
}
