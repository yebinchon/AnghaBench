
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct st_uvis25_hw {TYPE_2__* trig; int irq; int regmap; } ;
struct iio_dev {int name; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device* parent; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;


 int EINVAL ;
 int ENOMEM ;
 unsigned long IRQF_ONESHOT ;




 int ST_UVIS25_REG_CTRL3_ADDR ;
 int ST_UVIS25_REG_HL_MASK ;
 int dev_err (struct device*,char*,int ) ;
 int dev_info (struct device*,char*,unsigned long) ;
 TYPE_2__* devm_iio_trigger_alloc (struct device*,char*,int ) ;
 int devm_iio_trigger_register (struct device*,TYPE_2__*) ;
 int devm_request_threaded_irq (struct device*,int ,int *,int ,unsigned long,int ,struct st_uvis25_hw*) ;
 struct st_uvis25_hw* iio_priv (struct iio_dev*) ;
 int iio_trigger_set_drvdata (TYPE_2__*,struct iio_dev*) ;
 int irq_get_irq_data (int ) ;
 unsigned long irqd_get_trigger_type (int ) ;
 struct device* regmap_get_device (int ) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int st_uvis25_trigger_handler_thread ;

__attribute__((used)) static int st_uvis25_allocate_trigger(struct iio_dev *iio_dev)
{
 struct st_uvis25_hw *hw = iio_priv(iio_dev);
 struct device *dev = regmap_get_device(hw->regmap);
 bool irq_active_low = 0;
 unsigned long irq_type;
 int err;

 irq_type = irqd_get_trigger_type(irq_get_irq_data(hw->irq));

 switch (irq_type) {
 case 130:
 case 128:
  break;
 case 129:
 case 131:
  irq_active_low = 1;
  break;
 default:
  dev_info(dev, "mode %lx unsupported\n", irq_type);
  return -EINVAL;
 }

 err = regmap_update_bits(hw->regmap, ST_UVIS25_REG_CTRL3_ADDR,
     ST_UVIS25_REG_HL_MASK, irq_active_low);
 if (err < 0)
  return err;

 err = devm_request_threaded_irq(dev, hw->irq, ((void*)0),
     st_uvis25_trigger_handler_thread,
     irq_type | IRQF_ONESHOT,
     iio_dev->name, hw);
 if (err) {
  dev_err(dev, "failed to request trigger irq %d\n",
   hw->irq);
  return err;
 }

 hw->trig = devm_iio_trigger_alloc(dev, "%s-trigger",
       iio_dev->name);
 if (!hw->trig)
  return -ENOMEM;

 iio_trigger_set_drvdata(hw->trig, iio_dev);
 hw->trig->dev.parent = dev;

 return devm_iio_trigger_register(dev, hw->trig);
}
