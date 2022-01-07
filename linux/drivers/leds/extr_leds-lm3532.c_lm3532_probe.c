
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3532_data {int lock; int regmap; int * dev; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,...) ;
 int device_get_child_node_count (int *) ;
 struct lm3532_data* devm_kzalloc (int *,int ,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct lm3532_data*) ;
 int leds ;
 int lm3532_parse_node (struct lm3532_data*) ;
 int lm3532_regmap_config ;
 int mutex_init (int *) ;
 int struct_size (struct lm3532_data*,int ,int) ;

__attribute__((used)) static int lm3532_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 struct lm3532_data *drvdata;
 int ret = 0;
 int count;

 count = device_get_child_node_count(&client->dev);
 if (!count) {
  dev_err(&client->dev, "LEDs are not defined in device tree!");
  return -ENODEV;
 }

 drvdata = devm_kzalloc(&client->dev, struct_size(drvdata, leds, count),
      GFP_KERNEL);
 if (drvdata == ((void*)0))
  return -ENOMEM;

 drvdata->client = client;
 drvdata->dev = &client->dev;

 drvdata->regmap = devm_regmap_init_i2c(client, &lm3532_regmap_config);
 if (IS_ERR(drvdata->regmap)) {
  ret = PTR_ERR(drvdata->regmap);
  dev_err(&client->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }

 mutex_init(&drvdata->lock);
 i2c_set_clientdata(client, drvdata);

 ret = lm3532_parse_node(drvdata);
 if (ret) {
  dev_err(&client->dev, "Failed to parse node\n");
  return ret;
 }

 return ret;
}
