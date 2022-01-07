
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int of_node; int * funcs; } ;
struct TYPE_9__ {char* name; int transfer; TYPE_1__* dev; } ;
struct ti_sn_bridge {TYPE_3__ bridge; TYPE_2__ aux; TYPE_1__* dev; int * refclk; int * enable_gpio; int panel; int * regmap; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_8__ {int of_node; } ;
struct i2c_client {TYPE_1__ dev; int adapter; } ;


 int DRM_DEBUG_KMS (char*) ;
 int DRM_ERROR (char*) ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 int I2C_FUNC_I2C ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_set_drvdata (TYPE_1__*,struct ti_sn_bridge*) ;
 int * devm_clk_get (TYPE_1__*,char*) ;
 int * devm_gpiod_get (TYPE_1__*,char*,int ) ;
 struct ti_sn_bridge* devm_kzalloc (TYPE_1__*,int,int ) ;
 int * devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int drm_bridge_add (TYPE_3__*) ;
 int drm_dp_aux_register (TYPE_2__*) ;
 int drm_of_find_panel_or_bridge (int ,int,int ,int *,int *) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct ti_sn_bridge*) ;
 int pm_runtime_enable (TYPE_1__*) ;
 int ti_sn_aux_transfer ;
 int ti_sn_bridge_funcs ;
 int ti_sn_bridge_parse_dsi_host (struct ti_sn_bridge*) ;
 int ti_sn_bridge_parse_regulators (struct ti_sn_bridge*) ;
 int ti_sn_bridge_regmap_config ;
 int ti_sn_debugfs_init (struct ti_sn_bridge*) ;

__attribute__((used)) static int ti_sn_bridge_probe(struct i2c_client *client,
         const struct i2c_device_id *id)
{
 struct ti_sn_bridge *pdata;
 int ret;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
  DRM_ERROR("device doesn't support I2C\n");
  return -ENODEV;
 }

 pdata = devm_kzalloc(&client->dev, sizeof(struct ti_sn_bridge),
        GFP_KERNEL);
 if (!pdata)
  return -ENOMEM;

 pdata->regmap = devm_regmap_init_i2c(client,
          &ti_sn_bridge_regmap_config);
 if (IS_ERR(pdata->regmap)) {
  DRM_ERROR("regmap i2c init failed\n");
  return PTR_ERR(pdata->regmap);
 }

 pdata->dev = &client->dev;

 ret = drm_of_find_panel_or_bridge(pdata->dev->of_node, 1, 0,
       &pdata->panel, ((void*)0));
 if (ret) {
  DRM_ERROR("could not find any panel node\n");
  return ret;
 }

 dev_set_drvdata(&client->dev, pdata);

 pdata->enable_gpio = devm_gpiod_get(pdata->dev, "enable",
         GPIOD_OUT_LOW);
 if (IS_ERR(pdata->enable_gpio)) {
  DRM_ERROR("failed to get enable gpio from DT\n");
  ret = PTR_ERR(pdata->enable_gpio);
  return ret;
 }

 ret = ti_sn_bridge_parse_regulators(pdata);
 if (ret) {
  DRM_ERROR("failed to parse regulators\n");
  return ret;
 }

 pdata->refclk = devm_clk_get(pdata->dev, "refclk");
 if (IS_ERR(pdata->refclk)) {
  ret = PTR_ERR(pdata->refclk);
  if (ret == -EPROBE_DEFER)
   return ret;
  DRM_DEBUG_KMS("refclk not found\n");
  pdata->refclk = ((void*)0);
 }

 ret = ti_sn_bridge_parse_dsi_host(pdata);
 if (ret)
  return ret;

 pm_runtime_enable(pdata->dev);

 i2c_set_clientdata(client, pdata);

 pdata->aux.name = "ti-sn65dsi86-aux";
 pdata->aux.dev = pdata->dev;
 pdata->aux.transfer = ti_sn_aux_transfer;
 drm_dp_aux_register(&pdata->aux);

 pdata->bridge.funcs = &ti_sn_bridge_funcs;
 pdata->bridge.of_node = client->dev.of_node;

 drm_bridge_add(&pdata->bridge);

 ti_sn_debugfs_init(pdata);

 return 0;
}
