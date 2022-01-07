
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iqs5xx_private {scalar_t__ input; int lock; int reset_gpio; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int name; int irq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,int) ;
 int devm_device_add_group (int *,int *) ;
 int devm_gpiod_get (int *,char*,int ) ;
 struct iqs5xx_private* devm_kzalloc (int *,int,int ) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int ,int ,struct iqs5xx_private*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iqs5xx_private*) ;
 int input_register_device (scalar_t__) ;
 int iqs5xx_attr_group ;
 int iqs5xx_dev_init (struct i2c_client*) ;
 int iqs5xx_irq ;
 int iqs5xx_reset (struct i2c_client*) ;
 int mutex_init (int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int iqs5xx_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct iqs5xx_private *iqs5xx;
 int error;

 iqs5xx = devm_kzalloc(&client->dev, sizeof(*iqs5xx), GFP_KERNEL);
 if (!iqs5xx)
  return -ENOMEM;

 i2c_set_clientdata(client, iqs5xx);
 iqs5xx->client = client;

 iqs5xx->reset_gpio = devm_gpiod_get(&client->dev,
         "reset", GPIOD_OUT_LOW);
 if (IS_ERR(iqs5xx->reset_gpio)) {
  error = PTR_ERR(iqs5xx->reset_gpio);
  dev_err(&client->dev, "Failed to request GPIO: %d\n", error);
  return error;
 }

 mutex_init(&iqs5xx->lock);

 iqs5xx_reset(client);
 usleep_range(10000, 10100);

 error = iqs5xx_dev_init(client);
 if (error)
  return error;

 error = devm_request_threaded_irq(&client->dev, client->irq,
       ((void*)0), iqs5xx_irq, IRQF_ONESHOT,
       client->name, iqs5xx);
 if (error) {
  dev_err(&client->dev, "Failed to request IRQ: %d\n", error);
  return error;
 }

 error = devm_device_add_group(&client->dev, &iqs5xx_attr_group);
 if (error) {
  dev_err(&client->dev, "Failed to add attributes: %d\n", error);
  return error;
 }

 if (iqs5xx->input) {
  error = input_register_device(iqs5xx->input);
  if (error)
   dev_err(&client->dev,
    "Failed to register device: %d\n",
    error);
 }

 return error;
}
