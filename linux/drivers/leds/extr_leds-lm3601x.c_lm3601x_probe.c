
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3601x_led {int lock; int regmap; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;
struct fwnode_handle {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,int) ;
 struct lm3601x_led* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct lm3601x_led*) ;
 int lm3601x_parse_node (struct lm3601x_led*,struct fwnode_handle**) ;
 int lm3601x_register_leds (struct lm3601x_led*,struct fwnode_handle*) ;
 int lm3601x_regmap ;
 int mutex_init (int *) ;

__attribute__((used)) static int lm3601x_probe(struct i2c_client *client)
{
 struct lm3601x_led *led;
 struct fwnode_handle *fwnode;
 int ret;

 led = devm_kzalloc(&client->dev, sizeof(*led), GFP_KERNEL);
 if (!led)
  return -ENOMEM;

 led->client = client;
 i2c_set_clientdata(client, led);

 ret = lm3601x_parse_node(led, &fwnode);
 if (ret)
  return -ENODEV;

 led->regmap = devm_regmap_init_i2c(client, &lm3601x_regmap);
 if (IS_ERR(led->regmap)) {
  ret = PTR_ERR(led->regmap);
  dev_err(&client->dev,
   "Failed to allocate register map: %d\n", ret);
  return ret;
 }

 mutex_init(&led->lock);

 return lm3601x_register_leds(led, fwnode);
}
