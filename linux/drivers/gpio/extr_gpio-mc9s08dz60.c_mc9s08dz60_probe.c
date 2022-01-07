
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; int can_sleep; int direction_output; int set; int get; int ngpio; int owner; int * parent; int label; } ;
struct mc9s08dz60 {TYPE_1__ chip; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIO_NUM ;
 int THIS_MODULE ;
 int devm_gpiochip_add_data (int *,TYPE_1__*,struct mc9s08dz60*) ;
 struct mc9s08dz60* devm_kzalloc (int *,int,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct mc9s08dz60*) ;
 int mc9s08dz60_direction_output ;
 int mc9s08dz60_get_value ;
 int mc9s08dz60_set_value ;

__attribute__((used)) static int mc9s08dz60_probe(struct i2c_client *client,
       const struct i2c_device_id *id)
{
 struct mc9s08dz60 *mc9s;

 mc9s = devm_kzalloc(&client->dev, sizeof(*mc9s), GFP_KERNEL);
 if (!mc9s)
  return -ENOMEM;

 mc9s->chip.label = client->name;
 mc9s->chip.base = -1;
 mc9s->chip.parent = &client->dev;
 mc9s->chip.owner = THIS_MODULE;
 mc9s->chip.ngpio = GPIO_NUM;
 mc9s->chip.can_sleep = 1;
 mc9s->chip.get = mc9s08dz60_get_value;
 mc9s->chip.set = mc9s08dz60_set_value;
 mc9s->chip.direction_output = mc9s08dz60_direction_output;
 mc9s->client = client;
 i2c_set_clientdata(client, mc9s);

 return devm_gpiochip_add_data(&client->dev, &mc9s->chip, mc9s);
}
