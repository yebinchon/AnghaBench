
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tda9950_priv {int notify; int adap; struct device* hdmi; struct tda9950_glue* glue; struct i2c_client* client; } ;
struct tda9950_glue {unsigned long irq_flags; struct device* parent; } ;
struct i2c_device_id {int dummy; } ;
struct device {struct tda9950_glue* platform_data; } ;
struct i2c_client {struct device dev; int irq; int adapter; } ;


 int CEC_CAP_DEFAULTS ;
 int CEC_MAX_LOG_ADDRS ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 unsigned long IRQF_ONESHOT ;
 unsigned long IRQF_SHARED ;
 unsigned long IRQF_TRIGGER_FALLING ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int REG_CVR ;
 int cec_allocate_adapter (int *,struct tda9950_priv*,char*,int ,int ) ;
 int cec_delete_adapter (int ) ;
 int cec_notifier_get (struct device*) ;
 int cec_notifier_put (int ) ;
 int cec_register_adapter (int ,struct device*) ;
 int cec_register_cec_notifier (int ,int ) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,int,int) ;
 int dev_name (struct device*) ;
 int devm_add_action (struct device*,int ,struct tda9950_priv*) ;
 struct tda9950_priv* devm_kzalloc (struct device*,int,int ) ;
 int devm_remove_action (struct device*,int ,struct tda9950_priv*) ;
 int devm_request_threaded_irq (struct device*,int ,int *,int ,unsigned long,int ,struct tda9950_priv*) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct tda9950_priv*) ;
 int tda9950_cec_del ;
 int tda9950_cec_ops ;
 int tda9950_devm_glue_init (struct device*,struct tda9950_glue*) ;
 int tda9950_glue_open (struct tda9950_priv*) ;
 int tda9950_glue_release (struct tda9950_priv*) ;
 int tda9950_irq ;
 int tda9950_read (struct i2c_client*,int ) ;

__attribute__((used)) static int tda9950_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct tda9950_glue *glue = client->dev.platform_data;
 struct device *dev = &client->dev;
 struct tda9950_priv *priv;
 unsigned long irqflags;
 int ret;
 u8 cvr;





 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
  dev_err(&client->dev,
   "adapter does not support I2C functionality\n");
  return -ENXIO;
 }


 if (client->irq <= 0) {
  dev_err(&client->dev, "driver requires an interrupt\n");
  return -ENXIO;
 }

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->client = client;
 priv->glue = glue;

 i2c_set_clientdata(client, priv);






 priv->hdmi = dev;
 if (glue && glue->parent)
  priv->hdmi = glue->parent;

 priv->adap = cec_allocate_adapter(&tda9950_cec_ops, priv, "tda9950",
       CEC_CAP_DEFAULTS,
       CEC_MAX_LOG_ADDRS);
 if (IS_ERR(priv->adap))
  return PTR_ERR(priv->adap);

 ret = devm_add_action(dev, tda9950_cec_del, priv);
 if (ret) {
  cec_delete_adapter(priv->adap);
  return ret;
 }

 ret = tda9950_devm_glue_init(dev, glue);
 if (ret)
  return ret;

 ret = tda9950_glue_open(priv);
 if (ret)
  return ret;

 cvr = tda9950_read(client, REG_CVR);

 dev_info(&client->dev,
   "TDA9950 CEC interface, hardware version %u.%u\n",
   cvr >> 4, cvr & 15);

 tda9950_glue_release(priv);

 irqflags = IRQF_TRIGGER_FALLING;
 if (glue)
  irqflags = glue->irq_flags;

 ret = devm_request_threaded_irq(dev, client->irq, ((void*)0), tda9950_irq,
     irqflags | IRQF_SHARED | IRQF_ONESHOT,
     dev_name(&client->dev), priv);
 if (ret < 0)
  return ret;

 priv->notify = cec_notifier_get(priv->hdmi);
 if (!priv->notify)
  return -ENOMEM;

 ret = cec_register_adapter(priv->adap, priv->hdmi);
 if (ret < 0) {
  cec_notifier_put(priv->notify);
  return ret;
 }





 devm_remove_action(dev, tda9950_cec_del, priv);

 cec_register_cec_notifier(priv->adap, priv->notify);

 return 0;
}
