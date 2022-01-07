
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fwnode; int of_node; int * type; int * bus; int * parent; int platform_data; } ;
struct i2c_client {int flags; int addr; int name; TYPE_1__ dev; struct i2c_adapter* adapter; scalar_t__ init_irq; } ;
struct i2c_board_info {int flags; int of_node; int properties; int fwnode; int type; int num_resources; int resources; scalar_t__ irq; int addr; int platform_data; } ;
struct i2c_adapter {int dev; } ;


 int ENOMEM ;
 struct i2c_client* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int I2C_CLIENT_TEN ;
 int dev_dbg (int *,char*,int ,int ) ;
 int dev_err (int *,char*,int,int,...) ;
 int dev_name (TYPE_1__*) ;
 int device_add_properties (TYPE_1__*,int ) ;
 int device_register (TYPE_1__*) ;
 int device_remove_properties (TYPE_1__*) ;
 int i2c_bus_type ;
 int i2c_check_addr_busy (struct i2c_adapter*,int ) ;
 int i2c_check_addr_validity (int ,int) ;
 int i2c_client_type ;
 scalar_t__ i2c_dev_irq_from_resources (int ,int ) ;
 int i2c_dev_set_name (struct i2c_adapter*,struct i2c_client*,struct i2c_board_info const*) ;
 int i2c_encode_flags_to_addr (struct i2c_client*) ;
 int kfree (struct i2c_client*) ;
 struct i2c_client* kzalloc (int,int ) ;
 int of_node_get (int ) ;
 int of_node_put (int ) ;
 int strlcpy (int ,int ,int) ;

struct i2c_client *
i2c_new_client_device(struct i2c_adapter *adap, struct i2c_board_info const *info)
{
 struct i2c_client *client;
 int status;

 client = kzalloc(sizeof *client, GFP_KERNEL);
 if (!client)
  return ERR_PTR(-ENOMEM);

 client->adapter = adap;

 client->dev.platform_data = info->platform_data;
 client->flags = info->flags;
 client->addr = info->addr;

 client->init_irq = info->irq;
 if (!client->init_irq)
  client->init_irq = i2c_dev_irq_from_resources(info->resources,
        info->num_resources);

 strlcpy(client->name, info->type, sizeof(client->name));

 status = i2c_check_addr_validity(client->addr, client->flags);
 if (status) {
  dev_err(&adap->dev, "Invalid %d-bit I2C address 0x%02hx\n",
   client->flags & I2C_CLIENT_TEN ? 10 : 7, client->addr);
  goto out_err_silent;
 }


 status = i2c_check_addr_busy(adap, i2c_encode_flags_to_addr(client));
 if (status)
  goto out_err;

 client->dev.parent = &client->adapter->dev;
 client->dev.bus = &i2c_bus_type;
 client->dev.type = &i2c_client_type;
 client->dev.of_node = of_node_get(info->of_node);
 client->dev.fwnode = info->fwnode;

 i2c_dev_set_name(adap, client, info);

 if (info->properties) {
  status = device_add_properties(&client->dev, info->properties);
  if (status) {
   dev_err(&adap->dev,
    "Failed to add properties to client %s: %d\n",
    client->name, status);
   goto out_err_put_of_node;
  }
 }

 status = device_register(&client->dev);
 if (status)
  goto out_free_props;

 dev_dbg(&adap->dev, "client [%s] registered with bus id %s\n",
  client->name, dev_name(&client->dev));

 return client;

out_free_props:
 if (info->properties)
  device_remove_properties(&client->dev);
out_err_put_of_node:
 of_node_put(info->of_node);
out_err:
 dev_err(&adap->dev,
  "Failed to register i2c client %s at 0x%02x (%d)\n",
  client->name, client->addr, status);
out_err_silent:
 kfree(client);
 return ERR_PTR(status);
}
