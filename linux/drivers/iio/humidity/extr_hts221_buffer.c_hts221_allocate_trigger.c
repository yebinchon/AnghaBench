
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct st_sensors_platform_data {scalar_t__ open_drain; } ;
struct iio_dev {int trig; int name; } ;
struct hts221_hw {TYPE_2__* trig; TYPE_4__* dev; int irq; int name; int regmap; } ;
struct device_node {int dummy; } ;
struct TYPE_13__ {scalar_t__ platform_data; struct device_node* of_node; } ;
struct TYPE_11__ {TYPE_4__* parent; } ;
struct TYPE_12__ {TYPE_1__ dev; int * ops; } ;


 int ENOMEM ;
 int FIELD_PREP (int ,int) ;
 int HTS221_REG_DRDY_HL_ADDR ;
 int HTS221_REG_DRDY_HL_MASK ;
 int HTS221_REG_DRDY_PP_OD_ADDR ;
 int HTS221_REG_DRDY_PP_OD_MASK ;
 unsigned long IRQF_ONESHOT ;
 unsigned long IRQF_SHARED ;




 int dev_err (TYPE_4__*,char*,int ) ;
 int dev_info (TYPE_4__*,char*,unsigned long) ;
 TYPE_2__* devm_iio_trigger_alloc (TYPE_4__*,char*,int ) ;
 int devm_iio_trigger_register (TYPE_4__*,TYPE_2__*) ;
 int devm_request_threaded_irq (TYPE_4__*,int ,int *,int ,unsigned long,int ,struct hts221_hw*) ;
 int hts221_trigger_handler_thread ;
 int hts221_trigger_ops ;
 struct iio_dev* iio_priv_to_dev (struct hts221_hw*) ;
 int iio_trigger_get (TYPE_2__*) ;
 int iio_trigger_set_drvdata (TYPE_2__*,struct iio_dev*) ;
 int irq_get_irq_data (int ) ;
 unsigned long irqd_get_trigger_type (int ) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

int hts221_allocate_trigger(struct hts221_hw *hw)
{
 struct iio_dev *iio_dev = iio_priv_to_dev(hw);
 bool irq_active_low = 0, open_drain = 0;
 struct device_node *np = hw->dev->of_node;
 struct st_sensors_platform_data *pdata;
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
  dev_info(hw->dev,
    "mode %lx unsupported, using IRQF_TRIGGER_RISING\n",
    irq_type);
  irq_type = 128;
  break;
 }

 err = regmap_update_bits(hw->regmap, HTS221_REG_DRDY_HL_ADDR,
     HTS221_REG_DRDY_HL_MASK,
     FIELD_PREP(HTS221_REG_DRDY_HL_MASK,
         irq_active_low));
 if (err < 0)
  return err;

 pdata = (struct st_sensors_platform_data *)hw->dev->platform_data;
 if ((np && of_property_read_bool(np, "drive-open-drain")) ||
     (pdata && pdata->open_drain)) {
  irq_type |= IRQF_SHARED;
  open_drain = 1;
 }

 err = regmap_update_bits(hw->regmap, HTS221_REG_DRDY_PP_OD_ADDR,
     HTS221_REG_DRDY_PP_OD_MASK,
     FIELD_PREP(HTS221_REG_DRDY_PP_OD_MASK,
         open_drain));
 if (err < 0)
  return err;

 err = devm_request_threaded_irq(hw->dev, hw->irq, ((void*)0),
     hts221_trigger_handler_thread,
     irq_type | IRQF_ONESHOT,
     hw->name, hw);
 if (err) {
  dev_err(hw->dev, "failed to request trigger irq %d\n",
   hw->irq);
  return err;
 }

 hw->trig = devm_iio_trigger_alloc(hw->dev, "%s-trigger",
       iio_dev->name);
 if (!hw->trig)
  return -ENOMEM;

 iio_trigger_set_drvdata(hw->trig, iio_dev);
 hw->trig->ops = &hts221_trigger_ops;
 hw->trig->dev.parent = hw->dev;
 iio_dev->trig = iio_trigger_get(hw->trig);

 return devm_iio_trigger_register(hw->dev, hw->trig);
}
