
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int of_node; int * funcs; } ;
struct sii8620 {int extcon; TYPE_1__ bridge; struct device* dev; TYPE_2__* supplies; int gpio_reset; int clk_xtal; int mt_queue; int lock; } ;
struct i2c_device_id {int dummy; } ;
struct device {int of_node; } ;
struct i2c_client {int irq; struct device dev; } ;
struct TYPE_4__ {char* supply; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 int INIT_LIST_HEAD (int *) ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_HIGH ;
 int IRQ_NOAUTOEN ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int devm_clk_get (struct device*,char*) ;
 int devm_gpiod_get (struct device*,char*,int ) ;
 struct sii8620* devm_kzalloc (struct device*,int,int ) ;
 int devm_regulator_bulk_get (struct device*,int,TYPE_2__*) ;
 int devm_request_threaded_irq (struct device*,int ,int *,int ,int,char*,struct sii8620*) ;
 int drm_bridge_add (TYPE_1__*) ;
 int i2c_set_clientdata (struct i2c_client*,struct sii8620*) ;
 int irq_set_status_flags (int ,int ) ;
 int mutex_init (int *) ;
 int sii8620_bridge_funcs ;
 int sii8620_cable_in (struct sii8620*) ;
 int sii8620_extcon_init (struct sii8620*) ;
 int sii8620_irq_thread ;

__attribute__((used)) static int sii8620_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct sii8620 *ctx;
 int ret;

 ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->dev = dev;
 mutex_init(&ctx->lock);
 INIT_LIST_HEAD(&ctx->mt_queue);

 ctx->clk_xtal = devm_clk_get(dev, "xtal");
 if (IS_ERR(ctx->clk_xtal)) {
  dev_err(dev, "failed to get xtal clock from DT\n");
  return PTR_ERR(ctx->clk_xtal);
 }

 if (!client->irq) {
  dev_err(dev, "no irq provided\n");
  return -EINVAL;
 }
 irq_set_status_flags(client->irq, IRQ_NOAUTOEN);
 ret = devm_request_threaded_irq(dev, client->irq, ((void*)0),
     sii8620_irq_thread,
     IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
     "sii8620", ctx);
 if (ret < 0) {
  dev_err(dev, "failed to install IRQ handler\n");
  return ret;
 }

 ctx->gpio_reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
 if (IS_ERR(ctx->gpio_reset)) {
  dev_err(dev, "failed to get reset gpio from DT\n");
  return PTR_ERR(ctx->gpio_reset);
 }

 ctx->supplies[0].supply = "cvcc10";
 ctx->supplies[1].supply = "iovcc18";
 ret = devm_regulator_bulk_get(dev, 2, ctx->supplies);
 if (ret)
  return ret;

 ret = sii8620_extcon_init(ctx);
 if (ret < 0) {
  dev_err(ctx->dev, "failed to initialize EXTCON\n");
  return ret;
 }

 i2c_set_clientdata(client, ctx);

 ctx->bridge.funcs = &sii8620_bridge_funcs;
 ctx->bridge.of_node = dev->of_node;
 drm_bridge_add(&ctx->bridge);

 if (!ctx->extcon)
  sii8620_cable_in(ctx);

 return 0;
}
