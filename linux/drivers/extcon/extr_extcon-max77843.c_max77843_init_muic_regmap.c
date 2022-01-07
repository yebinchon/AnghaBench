
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max77693_dev {int i2c_muic; TYPE_1__* i2c; int irq_data_muic; int irq; int regmap_muic; } ;
struct TYPE_2__ {int dev; int adapter; } ;


 int I2C_ADDR_MUIC ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 int devm_regmap_init_i2c (int ,int *) ;
 int i2c_new_dummy_device (int ,int ) ;
 int i2c_set_clientdata (int ,struct max77693_dev*) ;
 int i2c_unregister_device (int ) ;
 int max77843_muic_irq_chip ;
 int max77843_muic_regmap_config ;
 int regmap_add_irq_chip (int ,int ,int,int ,int *,int *) ;

__attribute__((used)) static int max77843_init_muic_regmap(struct max77693_dev *max77843)
{
 int ret;

 max77843->i2c_muic = i2c_new_dummy_device(max77843->i2c->adapter,
   I2C_ADDR_MUIC);
 if (IS_ERR(max77843->i2c_muic)) {
  dev_err(&max77843->i2c->dev,
    "Cannot allocate I2C device for MUIC\n");
  return PTR_ERR(max77843->i2c_muic);
 }

 i2c_set_clientdata(max77843->i2c_muic, max77843);

 max77843->regmap_muic = devm_regmap_init_i2c(max77843->i2c_muic,
   &max77843_muic_regmap_config);
 if (IS_ERR(max77843->regmap_muic)) {
  ret = PTR_ERR(max77843->regmap_muic);
  goto err_muic_i2c;
 }

 ret = regmap_add_irq_chip(max77843->regmap_muic, max77843->irq,
   IRQF_TRIGGER_LOW | IRQF_ONESHOT | IRQF_SHARED,
   0, &max77843_muic_irq_chip, &max77843->irq_data_muic);
 if (ret < 0) {
  dev_err(&max77843->i2c->dev, "Cannot add MUIC IRQ chip\n");
  goto err_muic_i2c;
 }

 return 0;

err_muic_i2c:
 i2c_unregister_device(max77843->i2c_muic);

 return ret;
}
