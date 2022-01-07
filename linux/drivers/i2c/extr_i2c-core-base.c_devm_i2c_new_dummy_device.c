
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_dummy_devres {struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct i2c_client* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct i2c_client*) ;
 int devm_i2c_release_dummy ;
 int devres_add (struct device*,struct i2c_dummy_devres*) ;
 struct i2c_dummy_devres* devres_alloc (int ,int,int ) ;
 int devres_free (struct i2c_dummy_devres*) ;
 struct i2c_client* i2c_new_dummy_device (struct i2c_adapter*,int ) ;

struct i2c_client *devm_i2c_new_dummy_device(struct device *dev,
          struct i2c_adapter *adapter,
          u16 address)
{
 struct i2c_dummy_devres *dr;
 struct i2c_client *client;

 dr = devres_alloc(devm_i2c_release_dummy, sizeof(*dr), GFP_KERNEL);
 if (!dr)
  return ERR_PTR(-ENOMEM);

 client = i2c_new_dummy_device(adapter, address);
 if (IS_ERR(client)) {
  devres_free(dr);
 } else {
  dr->client = client;
  devres_add(dev, dr);
 }

 return client;
}
