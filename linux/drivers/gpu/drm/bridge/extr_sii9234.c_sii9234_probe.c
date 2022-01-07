
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; int * funcs; } ;
struct sii9234 {TYPE_1__ bridge; int lock; struct device* dev; } ;
struct i2c_device_id {int dummy; } ;
struct device {int of_node; } ;
struct i2c_client {int irq; struct device dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_HIGH ;
 int IRQ_NOAUTOEN ;
 int dev_err (struct device*,char*) ;
 struct sii9234* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int ,int *,int ,int,char*,struct sii9234*) ;
 int drm_bridge_add (TYPE_1__*) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct sii9234*) ;
 int irq_set_status_flags (int ,int ) ;
 int mutex_init (int *) ;
 int sii9234_bridge_funcs ;
 int sii9234_cable_in (struct sii9234*) ;
 int sii9234_init_resources (struct sii9234*,struct i2c_client*) ;
 int sii9234_irq_thread ;

__attribute__((used)) static int sii9234_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct i2c_adapter *adapter = client->adapter;
 struct sii9234 *ctx;
 struct device *dev = &client->dev;
 int ret;

 ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->dev = dev;
 mutex_init(&ctx->lock);

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
  dev_err(dev, "I2C adapter lacks SMBUS feature\n");
  return -EIO;
 }

 if (!client->irq) {
  dev_err(dev, "no irq provided\n");
  return -EINVAL;
 }

 irq_set_status_flags(client->irq, IRQ_NOAUTOEN);
 ret = devm_request_threaded_irq(dev, client->irq, ((void*)0),
     sii9234_irq_thread,
     IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
     "sii9234", ctx);
 if (ret < 0) {
  dev_err(dev, "failed to install IRQ handler\n");
  return ret;
 }

 ret = sii9234_init_resources(ctx, client);
 if (ret < 0)
  return ret;

 i2c_set_clientdata(client, ctx);

 ctx->bridge.funcs = &sii9234_bridge_funcs;
 ctx->bridge.of_node = dev->of_node;
 drm_bridge_add(&ctx->bridge);

 sii9234_cable_in(ctx);

 return 0;
}
