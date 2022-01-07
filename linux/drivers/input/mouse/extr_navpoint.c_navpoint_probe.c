
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssp_device {int irq; } ;
struct platform_device {int dev; int name; } ;
struct navpoint_platform_data {int gpio; int port; } ;
struct navpoint {int gpio; int * dev; struct input_dev* input; struct ssp_device* ssp; } ;
struct TYPE_2__ {int * parent; } ;
struct input_dev {int close; int open; int keybit; int evbit; TYPE_1__ dev; int name; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_LEFT ;
 int BTN_TOOL_FINGER ;
 int BTN_TOUCH ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int GPIOF_OUT_INIT_LOW ;
 int NAVPOINT_PRESSURE_MAX ;
 int NAVPOINT_PRESSURE_MIN ;
 int NAVPOINT_X_MAX ;
 int NAVPOINT_X_MIN ;
 int NAVPOINT_Y_MAX ;
 int NAVPOINT_Y_MIN ;
 int SSCR0 ;
 int SSCR0_SSE ;
 int __set_bit (int ,int ) ;
 int dev_dbg (int *,char*,int ,int ) ;
 int dev_err (int *,char*) ;
 struct navpoint_platform_data* dev_get_platdata (int *) ;
 int dev_warn (int *,char*,int ) ;
 int free_irq (int ,struct navpoint*) ;
 int gpio_free (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_request_one (int ,int ,char*) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int ,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct navpoint*) ;
 int kfree (struct navpoint*) ;
 struct navpoint* kzalloc (int,int ) ;
 int navpoint_close ;
 int navpoint_irq ;
 int navpoint_open ;
 int platform_set_drvdata (struct platform_device*,struct navpoint*) ;
 int pxa_ssp_free (struct ssp_device*) ;
 int pxa_ssp_read_reg (struct ssp_device*,int ) ;
 struct ssp_device* pxa_ssp_request (int ,int ) ;
 int pxa_ssp_write_reg (struct ssp_device*,int ,int ) ;
 int request_irq (int ,int ,int ,int ,struct navpoint*) ;

__attribute__((used)) static int navpoint_probe(struct platform_device *pdev)
{
 const struct navpoint_platform_data *pdata =
     dev_get_platdata(&pdev->dev);
 struct ssp_device *ssp;
 struct input_dev *input;
 struct navpoint *navpoint;
 int error;

 if (!pdata) {
  dev_err(&pdev->dev, "no platform data\n");
  return -EINVAL;
 }

 if (gpio_is_valid(pdata->gpio)) {
  error = gpio_request_one(pdata->gpio, GPIOF_OUT_INIT_LOW,
      "SYNAPTICS_ON");
  if (error)
   return error;
 }

 ssp = pxa_ssp_request(pdata->port, pdev->name);
 if (!ssp) {
  error = -ENODEV;
  goto err_free_gpio;
 }


 if (pxa_ssp_read_reg(ssp, SSCR0) & SSCR0_SSE) {
  pxa_ssp_write_reg(ssp, SSCR0, 0);
  dev_warn(&pdev->dev, "ssp%d already enabled\n", pdata->port);
 }

 navpoint = kzalloc(sizeof(*navpoint), GFP_KERNEL);
 input = input_allocate_device();
 if (!navpoint || !input) {
  error = -ENOMEM;
  goto err_free_mem;
 }

 navpoint->ssp = ssp;
 navpoint->input = input;
 navpoint->dev = &pdev->dev;
 navpoint->gpio = pdata->gpio;

 input->name = pdev->name;
 input->dev.parent = &pdev->dev;

 __set_bit(EV_KEY, input->evbit);
 __set_bit(EV_ABS, input->evbit);
 __set_bit(BTN_LEFT, input->keybit);
 __set_bit(BTN_TOUCH, input->keybit);
 __set_bit(BTN_TOOL_FINGER, input->keybit);

 input_set_abs_params(input, ABS_X,
        NAVPOINT_X_MIN, NAVPOINT_X_MAX, 0, 0);
 input_set_abs_params(input, ABS_Y,
        NAVPOINT_Y_MIN, NAVPOINT_Y_MAX, 0, 0);
 input_set_abs_params(input, ABS_PRESSURE,
        NAVPOINT_PRESSURE_MIN, NAVPOINT_PRESSURE_MAX,
        0, 0);

 input->open = navpoint_open;
 input->close = navpoint_close;

 input_set_drvdata(input, navpoint);

 error = request_irq(ssp->irq, navpoint_irq, 0, pdev->name, navpoint);
 if (error)
  goto err_free_mem;

 error = input_register_device(input);
 if (error)
  goto err_free_irq;

 platform_set_drvdata(pdev, navpoint);
 dev_dbg(&pdev->dev, "ssp%d, irq %d\n", pdata->port, ssp->irq);

 return 0;

err_free_irq:
 free_irq(ssp->irq, navpoint);
err_free_mem:
 input_free_device(input);
 kfree(navpoint);
 pxa_ssp_free(ssp);
err_free_gpio:
 if (gpio_is_valid(pdata->gpio))
  gpio_free(pdata->gpio);

 return error;
}
