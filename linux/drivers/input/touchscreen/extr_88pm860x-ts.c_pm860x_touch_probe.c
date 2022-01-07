
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct pm860x_touch_pdata {int gpadc_prebias; int slot_cycle; int off_scale; int sw_cal; int tsi_prebias; int pen_prebias; int pen_prechg; int res_x; } ;
struct pm860x_touch {int irq; int res_x; TYPE_3__* idev; struct i2c_client* i2c; struct pm860x_chip* chip; } ;
struct pm860x_chip {scalar_t__ id; TYPE_6__* dev; struct i2c_client* companion; struct i2c_client* client; } ;
struct TYPE_15__ {int parent; } ;
struct platform_device {TYPE_6__ dev; } ;
struct i2c_client {int dummy; } ;
struct TYPE_13__ {TYPE_6__* parent; } ;
struct TYPE_12__ {int bustype; } ;
struct TYPE_14__ {char* name; char* phys; int keybit; int evbit; int absbit; int close; int open; TYPE_2__ dev; TYPE_1__ id; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int ACCURATE_BIT ;
 int BTN_TOUCH ;
 int BUS_I2C ;
 scalar_t__ CHIP_PM8607 ;
 int EINVAL ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int EV_SYN ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int PM8607_GPADC_EN ;
 int PM8607_GPADC_MISC1 ;
 int PM8607_GPADC_OFF_SCALE_MASK ;
 int PM8607_GPADC_PREBIAS_MASK ;
 int PM8607_GPADC_SLOT_CYCLE_MASK ;
 int PM8607_GPADC_SW_CAL_MASK ;
 int PM8607_PD_PREBIAS ;
 int PM8607_PD_PREBIAS_MASK ;
 int PM8607_PD_PRECHG_MASK ;
 int PM8607_TSI_PREBIAS ;
 int __set_bit (int ,int ) ;
 int dev_err (TYPE_6__*,char*) ;
 struct pm860x_chip* dev_get_drvdata (int ) ;
 struct pm860x_touch_pdata* dev_get_platdata (TYPE_6__*) ;
 TYPE_3__* devm_input_allocate_device (TYPE_6__*) ;
 struct pm860x_touch* devm_kzalloc (TYPE_6__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_6__*,int,int *,int ,int ,char*,struct pm860x_touch*) ;
 int input_register_device (TYPE_3__*) ;
 int input_set_abs_params (TYPE_3__*,int ,int ,int,int ,int ) ;
 int input_set_drvdata (TYPE_3__*,struct pm860x_touch*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int pm860x_reg_write (struct i2c_client*,int ,int) ;
 int pm860x_set_bits (struct i2c_client*,int ,int ,int ) ;
 int pm860x_touch_close ;
 scalar_t__ pm860x_touch_dt_init (struct platform_device*,struct pm860x_chip*,int*) ;
 int pm860x_touch_handler ;
 int pm860x_touch_open ;

__attribute__((used)) static int pm860x_touch_probe(struct platform_device *pdev)
{
 struct pm860x_chip *chip = dev_get_drvdata(pdev->dev.parent);
 struct pm860x_touch_pdata *pdata = dev_get_platdata(&pdev->dev);
 struct pm860x_touch *touch;
 struct i2c_client *i2c = (chip->id == CHIP_PM8607) ? chip->client : chip->companion;

 int irq, ret, res_x = 0, data = 0;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return -EINVAL;

 if (pm860x_touch_dt_init(pdev, chip, &res_x)) {
  if (pdata) {

   data = 0;
   data |= (pdata->gpadc_prebias << 1)
    & PM8607_GPADC_PREBIAS_MASK;
   data |= (pdata->slot_cycle << 3)
    & PM8607_GPADC_SLOT_CYCLE_MASK;
   data |= (pdata->off_scale << 5)
    & PM8607_GPADC_OFF_SCALE_MASK;
   data |= (pdata->sw_cal << 7)
    & PM8607_GPADC_SW_CAL_MASK;
   if (data) {
    ret = pm860x_reg_write(i2c,
     PM8607_GPADC_MISC1, data);
    if (ret < 0)
     return -EINVAL;
   }

   if (pdata->tsi_prebias) {
    data = pdata->tsi_prebias;
    ret = pm860x_reg_write(i2c,
     PM8607_TSI_PREBIAS, data);
    if (ret < 0)
     return -EINVAL;
   }

   data = 0;
   data |= pdata->pen_prebias
    & PM8607_PD_PREBIAS_MASK;
   data |= (pdata->pen_prechg << 5)
    & PM8607_PD_PRECHG_MASK;
   if (data) {
    ret = pm860x_reg_write(i2c,
     PM8607_PD_PREBIAS, data);
    if (ret < 0)
     return -EINVAL;
   }
   res_x = pdata->res_x;
  } else {
   dev_err(&pdev->dev, "failed to get platform data\n");
   return -EINVAL;
  }
 }

 ret = pm860x_set_bits(i2c, PM8607_GPADC_MISC1, PM8607_GPADC_EN,
         PM8607_GPADC_EN);
 if (ret)
  return ret;

 touch = devm_kzalloc(&pdev->dev, sizeof(struct pm860x_touch),
        GFP_KERNEL);
 if (!touch)
  return -ENOMEM;

 touch->idev = devm_input_allocate_device(&pdev->dev);
 if (!touch->idev) {
  dev_err(&pdev->dev, "Failed to allocate input device!\n");
  return -ENOMEM;
 }

 touch->idev->name = "88pm860x-touch";
 touch->idev->phys = "88pm860x/input0";
 touch->idev->id.bustype = BUS_I2C;
 touch->idev->dev.parent = &pdev->dev;
 touch->idev->open = pm860x_touch_open;
 touch->idev->close = pm860x_touch_close;
 touch->chip = chip;
 touch->i2c = i2c;
 touch->irq = irq;
 touch->res_x = res_x;
 input_set_drvdata(touch->idev, touch);

 ret = devm_request_threaded_irq(&pdev->dev, touch->irq, ((void*)0),
     pm860x_touch_handler, IRQF_ONESHOT,
     "touch", touch);
 if (ret < 0)
  return ret;

 __set_bit(EV_ABS, touch->idev->evbit);
 __set_bit(ABS_X, touch->idev->absbit);
 __set_bit(ABS_Y, touch->idev->absbit);
 __set_bit(ABS_PRESSURE, touch->idev->absbit);
 __set_bit(EV_SYN, touch->idev->evbit);
 __set_bit(EV_KEY, touch->idev->evbit);
 __set_bit(BTN_TOUCH, touch->idev->keybit);

 input_set_abs_params(touch->idev, ABS_X, 0, 1 << ACCURATE_BIT, 0, 0);
 input_set_abs_params(touch->idev, ABS_Y, 0, 1 << ACCURATE_BIT, 0, 0);
 input_set_abs_params(touch->idev, ABS_PRESSURE, 0, 1 << ACCURATE_BIT,
    0, 0);

 ret = input_register_device(touch->idev);
 if (ret < 0) {
  dev_err(chip->dev, "Failed to register touch!\n");
  return ret;
 }

 return 0;
}
