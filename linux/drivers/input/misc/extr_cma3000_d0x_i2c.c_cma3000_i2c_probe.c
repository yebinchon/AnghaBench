
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int irq; int dev; } ;
struct cma3000_accl_data {int dummy; } ;


 scalar_t__ IS_ERR (struct cma3000_accl_data*) ;
 int PTR_ERR (struct cma3000_accl_data*) ;
 int cma3000_i2c_bops ;
 struct cma3000_accl_data* cma3000_init (int *,int ,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct cma3000_accl_data*) ;

__attribute__((used)) static int cma3000_i2c_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct cma3000_accl_data *data;

 data = cma3000_init(&client->dev, client->irq, &cma3000_i2c_bops);
 if (IS_ERR(data))
  return PTR_ERR(data);

 i2c_set_clientdata(client, data);

 return 0;
}
