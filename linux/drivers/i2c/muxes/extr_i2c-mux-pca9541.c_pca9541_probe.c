
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pca9541 {struct i2c_client* client; } ;
struct i2c_mux_core {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int name; int dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_LOCK_SEGMENT ;
 int I2C_MUX_ARBITRATOR ;
 int dev_info (int *,char*,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_lock_bus (struct i2c_adapter*,int ) ;
 int i2c_mux_add_adapter (struct i2c_mux_core*,int ,int ,int ) ;
 struct i2c_mux_core* i2c_mux_alloc (struct i2c_adapter*,int *,int,int,int ,int ,int ) ;
 struct pca9541* i2c_mux_priv (struct i2c_mux_core*) ;
 int i2c_set_clientdata (struct i2c_client*,struct i2c_mux_core*) ;
 int i2c_unlock_bus (struct i2c_adapter*,int ) ;
 int pca9541_release_bus (struct i2c_client*) ;
 int pca9541_release_chan ;
 int pca9541_select_chan ;

__attribute__((used)) static int pca9541_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct i2c_adapter *adap = client->adapter;
 struct i2c_mux_core *muxc;
 struct pca9541 *data;
 int ret;

 if (!i2c_check_functionality(adap, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;





 i2c_lock_bus(adap, I2C_LOCK_SEGMENT);
 pca9541_release_bus(client);
 i2c_unlock_bus(adap, I2C_LOCK_SEGMENT);



 muxc = i2c_mux_alloc(adap, &client->dev, 1, sizeof(*data),
        I2C_MUX_ARBITRATOR,
        pca9541_select_chan, pca9541_release_chan);
 if (!muxc)
  return -ENOMEM;

 data = i2c_mux_priv(muxc);
 data->client = client;

 i2c_set_clientdata(client, muxc);

 ret = i2c_mux_add_adapter(muxc, 0, 0, 0);
 if (ret)
  return ret;

 dev_info(&client->dev, "registered master selector for I2C %s\n",
   client->name);

 return 0;
}
