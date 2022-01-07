
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmbus_driver_info {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct pmbus_driver_info* devm_kmemdup (int *,int *,int,int ) ;
 int pmbus_do_probe (struct i2c_client*,struct i2c_device_id const*,struct pmbus_driver_info*) ;
 int tps53679_info ;

__attribute__((used)) static int tps53679_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct pmbus_driver_info *info;

 info = devm_kmemdup(&client->dev, &tps53679_info, sizeof(*info),
       GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 return pmbus_do_probe(client, id, info);
}
