
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int irq; int dev; } ;
struct fsa9480_usbsw {int * dev; int regmap; int edev; } ;


 int CON_MASK ;
 int EINVAL ;
 int ENOMEM ;
 int FSA9480_REG_CTRL ;
 int FSA9480_REG_INT1_MASK ;
 int FSA9480_REG_INT2_MASK ;
 int FSA9480_REG_TIMING1 ;
 int GFP_KERNEL ;
 int INT1_MASK ;
 int INT2_MASK ;
 int INT_ATTACH ;
 int INT_DETACH ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int TIMING1_ADC_500MS ;
 int dev_err (int *,char*,...) ;
 int device_init_wakeup (int *,int) ;
 int devm_extcon_dev_allocate (int *,int ) ;
 int devm_extcon_dev_register (int *,int ) ;
 struct fsa9480_usbsw* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int,char*,struct fsa9480_usbsw*) ;
 int fsa9480_detect_dev (struct fsa9480_usbsw*) ;
 int fsa9480_extcon_cable ;
 int fsa9480_irq_handler ;
 int fsa9480_regmap_config ;
 int fsa9480_write_reg (struct fsa9480_usbsw*,int ,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct fsa9480_usbsw*) ;

__attribute__((used)) static int fsa9480_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct fsa9480_usbsw *info;
 int ret;

 if (!client->irq) {
  dev_err(&client->dev, "no interrupt provided\n");
  return -EINVAL;
 }

 info = devm_kzalloc(&client->dev, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;
 info->dev = &client->dev;

 i2c_set_clientdata(client, info);


 info->edev = devm_extcon_dev_allocate(info->dev,
           fsa9480_extcon_cable);
 if (IS_ERR(info->edev)) {
  dev_err(info->dev, "failed to allocate memory for extcon\n");
  ret = -ENOMEM;
  return ret;
 }

 ret = devm_extcon_dev_register(info->dev, info->edev);
 if (ret) {
  dev_err(info->dev, "failed to register extcon device\n");
  return ret;
 }

 info->regmap = devm_regmap_init_i2c(client, &fsa9480_regmap_config);
 if (IS_ERR(info->regmap)) {
  ret = PTR_ERR(info->regmap);
  dev_err(info->dev, "failed to allocate register map: %d\n",
   ret);
  return ret;
 }


 fsa9480_write_reg(info, FSA9480_REG_TIMING1, TIMING1_ADC_500MS);


 fsa9480_write_reg(info, FSA9480_REG_CTRL, CON_MASK);


 fsa9480_write_reg(info, FSA9480_REG_INT1_MASK,
     INT1_MASK & ~(INT_ATTACH | INT_DETACH));
 fsa9480_write_reg(info, FSA9480_REG_INT2_MASK, INT2_MASK);

 ret = devm_request_threaded_irq(info->dev, client->irq, ((void*)0),
     fsa9480_irq_handler,
     IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
     "fsa9480", info);
 if (ret) {
  dev_err(info->dev, "failed to request IRQ\n");
  return ret;
 }

 device_init_wakeup(info->dev, 1);
 fsa9480_detect_dev(info);

 return 0;
}
