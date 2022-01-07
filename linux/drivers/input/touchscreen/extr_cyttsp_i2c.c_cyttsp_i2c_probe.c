
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int irq; int dev; int adapter; } ;
struct cyttsp {int dummy; } ;


 int CY_I2C_DATA_SIZE ;
 int EIO ;
 int I2C_FUNC_I2C ;
 scalar_t__ IS_ERR (struct cyttsp*) ;
 int PTR_ERR (struct cyttsp*) ;
 int cyttsp_i2c_bus_ops ;
 struct cyttsp* cyttsp_probe (int *,int *,int ,int ) ;
 int dev_err (int *,char*) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct cyttsp*) ;

__attribute__((used)) static int cyttsp_i2c_probe(struct i2c_client *client,
          const struct i2c_device_id *id)
{
 struct cyttsp *ts;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
  dev_err(&client->dev, "I2C functionality not Supported\n");
  return -EIO;
 }

 ts = cyttsp_probe(&cyttsp_i2c_bus_ops, &client->dev, client->irq,
     CY_I2C_DATA_SIZE);

 if (IS_ERR(ts))
  return PTR_ERR(ts);

 i2c_set_clientdata(client, ts);
 return 0;
}
