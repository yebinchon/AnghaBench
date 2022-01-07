
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_2__* adapter; TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int dev; } ;


 int dev_dbg (int *,char*,char const*,int ) ;
 struct i2c_client* i2c_new_dummy_device (TYPE_2__*,int ) ;
 int of_property_match_string (struct device_node*,char*,char const*) ;
 int of_property_read_u32_index (struct device_node*,char*,int,int *) ;

struct i2c_client *i2c_new_ancillary_device(struct i2c_client *client,
      const char *name,
      u16 default_addr)
{
 struct device_node *np = client->dev.of_node;
 u32 addr = default_addr;
 int i;

 if (np) {
  i = of_property_match_string(np, "reg-names", name);
  if (i >= 0)
   of_property_read_u32_index(np, "reg", i, &addr);
 }

 dev_dbg(&client->adapter->dev, "Address for %s : 0x%x\n", name, addr);
 return i2c_new_dummy_device(client->adapter, addr);
}
