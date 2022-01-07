
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int irq; int dev; int adapter; } ;
struct cyttsp4 {int dummy; } ;


 int CYTTSP4_I2C_DATA_SIZE ;
 int EIO ;
 int I2C_FUNC_I2C ;
 int PTR_ERR_OR_ZERO (struct cyttsp4*) ;
 int cyttsp4_i2c_bus_ops ;
 struct cyttsp4* cyttsp4_probe (int *,int *,int ,int ) ;
 int dev_err (int *,char*) ;
 int i2c_check_functionality (int ,int ) ;

__attribute__((used)) static int cyttsp4_i2c_probe(struct i2c_client *client,
          const struct i2c_device_id *id)
{
 struct cyttsp4 *ts;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
  dev_err(&client->dev, "I2C functionality not Supported\n");
  return -EIO;
 }

 ts = cyttsp4_probe(&cyttsp4_i2c_bus_ops, &client->dev, client->irq,
     CYTTSP4_I2C_DATA_SIZE);

 return PTR_ERR_OR_ZERO(ts);
}
