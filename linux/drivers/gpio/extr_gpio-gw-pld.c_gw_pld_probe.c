
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct i2c_client {int flags; struct device dev; } ;
struct TYPE_2__ {int base; int can_sleep; int ngpio; int set; int direction_output; int get; int direction_input; int label; int owner; struct device_node* of_node; struct device* parent; } ;
struct gw_pld {int out; TYPE_1__ chip; struct i2c_client* client; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_M_IGNORE_NAK ;
 int THIS_MODULE ;
 int dev_info (struct device*,char*) ;
 int dev_name (struct device*) ;
 int devm_gpiochip_add_data (struct device*,TYPE_1__*,struct gw_pld*) ;
 struct gw_pld* devm_kzalloc (struct device*,int,int ) ;
 int gw_pld_get8 ;
 int gw_pld_input8 ;
 int gw_pld_output8 ;
 int gw_pld_set8 ;
 int i2c_set_clientdata (struct i2c_client*,struct gw_pld*) ;

__attribute__((used)) static int gw_pld_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct device_node *np = dev->of_node;
 struct gw_pld *gw;
 int ret;

 gw = devm_kzalloc(dev, sizeof(*gw), GFP_KERNEL);
 if (!gw)
  return -ENOMEM;

 gw->chip.base = -1;
 gw->chip.can_sleep = 1;
 gw->chip.parent = dev;
 gw->chip.of_node = np;
 gw->chip.owner = THIS_MODULE;
 gw->chip.label = dev_name(dev);
 gw->chip.ngpio = 8;
 gw->chip.direction_input = gw_pld_input8;
 gw->chip.get = gw_pld_get8;
 gw->chip.direction_output = gw_pld_output8;
 gw->chip.set = gw_pld_set8;
 gw->client = client;






 client->flags |= I2C_M_IGNORE_NAK;
 gw->out = 0xFF;

 i2c_set_clientdata(client, gw);

 ret = devm_gpiochip_add_data(dev, &gw->chip, gw);
 if (ret)
  return ret;

 dev_info(dev, "registered Gateworks PLD GPIO device\n");

 return 0;
}
