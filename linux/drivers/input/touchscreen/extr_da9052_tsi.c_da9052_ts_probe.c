
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_5__ {TYPE_3__* parent; } ;
struct TYPE_4__ {int version; int vendor; int product; } ;
struct input_dev {char* name; int keybit; int evbit; int close; int open; TYPE_2__ dev; TYPE_1__ id; } ;
struct da9052_tsi {int stopped; struct da9052* da9052; struct input_dev* dev; int ts_pen_work; } ;
struct da9052 {int dev; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int DA9052_IRQ_PENDOWN ;
 int DA9052_IRQ_TSIREADY ;
 int DA9052_TSI_CONT_A_REG ;
 int EINVAL ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int __set_bit (int ,int ) ;
 int da9052_configure_tsi (struct da9052_tsi*) ;
 int da9052_disable_irq (struct da9052*,int ) ;
 int da9052_free_irq (struct da9052*,int ,struct da9052_tsi*) ;
 int da9052_reg_update (struct da9052*,int ,int,int ) ;
 int da9052_request_irq (struct da9052*,int ,char*,int ,struct da9052_tsi*) ;
 int da9052_ts_adc_toggle (struct da9052_tsi*,int) ;
 int da9052_ts_datardy_irq ;
 int da9052_ts_input_close ;
 int da9052_ts_input_open ;
 int da9052_ts_pen_work ;
 int da9052_ts_pendwn_irq ;
 int dev_err (int ,char*,int) ;
 struct da9052* dev_get_drvdata (int ) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct da9052_tsi*) ;
 int kfree (struct da9052_tsi*) ;
 struct da9052_tsi* kzalloc (int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct da9052_tsi*) ;

__attribute__((used)) static int da9052_ts_probe(struct platform_device *pdev)
{
 struct da9052 *da9052;
 struct da9052_tsi *tsi;
 struct input_dev *input_dev;
 int error;

 da9052 = dev_get_drvdata(pdev->dev.parent);
 if (!da9052)
  return -EINVAL;

 tsi = kzalloc(sizeof(struct da9052_tsi), GFP_KERNEL);
 input_dev = input_allocate_device();
 if (!tsi || !input_dev) {
  error = -ENOMEM;
  goto err_free_mem;
 }

 tsi->da9052 = da9052;
 tsi->dev = input_dev;
 tsi->stopped = 1;
 INIT_DELAYED_WORK(&tsi->ts_pen_work, da9052_ts_pen_work);

 input_dev->id.version = 0x0101;
 input_dev->id.vendor = 0x15B6;
 input_dev->id.product = 0x9052;
 input_dev->name = "Dialog DA9052 TouchScreen Driver";
 input_dev->dev.parent = &pdev->dev;
 input_dev->open = da9052_ts_input_open;
 input_dev->close = da9052_ts_input_close;

 __set_bit(EV_ABS, input_dev->evbit);
 __set_bit(EV_KEY, input_dev->evbit);
 __set_bit(BTN_TOUCH, input_dev->keybit);

 input_set_abs_params(input_dev, ABS_X, 0, 1023, 0, 0);
 input_set_abs_params(input_dev, ABS_Y, 0, 1023, 0, 0);
 input_set_abs_params(input_dev, ABS_PRESSURE, 0, 1023, 0, 0);

 input_set_drvdata(input_dev, tsi);


 da9052_reg_update(tsi->da9052, DA9052_TSI_CONT_A_REG, 1 << 1, 0);


 da9052_ts_adc_toggle(tsi, 0);

 error = da9052_request_irq(tsi->da9052, DA9052_IRQ_PENDOWN,
    "pendown-irq", da9052_ts_pendwn_irq, tsi);
 if (error) {
  dev_err(tsi->da9052->dev,
   "Failed to register PENDWN IRQ: %d\n", error);
  goto err_free_mem;
 }

 error = da9052_request_irq(tsi->da9052, DA9052_IRQ_TSIREADY,
    "tsiready-irq", da9052_ts_datardy_irq, tsi);
 if (error) {
  dev_err(tsi->da9052->dev,
   "Failed to register TSIRDY IRQ :%d\n", error);
  goto err_free_pendwn_irq;
 }


 da9052_disable_irq(tsi->da9052, DA9052_IRQ_PENDOWN);
 da9052_disable_irq(tsi->da9052, DA9052_IRQ_TSIREADY);

 error = da9052_configure_tsi(tsi);
 if (error)
  goto err_free_datardy_irq;

 error = input_register_device(tsi->dev);
 if (error)
  goto err_free_datardy_irq;

 platform_set_drvdata(pdev, tsi);

 return 0;

err_free_datardy_irq:
 da9052_free_irq(tsi->da9052, DA9052_IRQ_TSIREADY, tsi);
err_free_pendwn_irq:
 da9052_free_irq(tsi->da9052, DA9052_IRQ_PENDOWN, tsi);
err_free_mem:
 kfree(tsi);
 input_free_device(input_dev);

 return error;
}
