
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct pwrkey_drv_data {scalar_t__ irq; int wakeup; struct input_dev* input; int keycode; int check_timer; int snvs; } ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; int name; } ;
struct TYPE_10__ {int bustype; } ;
struct input_dev {char* phys; TYPE_1__ id; int name; } ;
struct device_node {int dummy; } ;


 int BUS_HOST ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int KEY_POWER ;
 int PTR_ERR (int ) ;
 int SNVS_LPCR_DEP_EN ;
 int SNVS_LPCR_REG ;
 int SNVS_LPSR_REG ;
 int SNVS_LPSR_SPO ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_pm_set_wake_irq (TYPE_2__*,scalar_t__) ;
 int dev_warn (TYPE_2__*,char*) ;
 int device_init_wakeup (TYPE_2__*,int ) ;
 int devm_add_action (TYPE_2__*,int ,struct pwrkey_drv_data*) ;
 struct input_dev* devm_input_allocate_device (TYPE_2__*) ;
 struct pwrkey_drv_data* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_request_irq (TYPE_2__*,scalar_t__,int ,int ,int ,struct platform_device*) ;
 int imx_imx_snvs_check_for_events ;
 int imx_snvs_pwrkey_act ;
 int imx_snvs_pwrkey_interrupt ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int of_property_read_bool (struct device_node*,char*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int *) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct pwrkey_drv_data*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int ) ;
 int syscon_regmap_lookup_by_phandle (struct device_node*,char*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int imx_snvs_pwrkey_probe(struct platform_device *pdev)
{
 struct pwrkey_drv_data *pdata = ((void*)0);
 struct input_dev *input = ((void*)0);
 struct device_node *np;
 int error;


 np = pdev->dev.of_node;
 if (!np)
  return -ENODEV;

 pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata)
  return -ENOMEM;

 pdata->snvs = syscon_regmap_lookup_by_phandle(np, "regmap");
 if (IS_ERR(pdata->snvs)) {
  dev_err(&pdev->dev, "Can't get snvs syscon\n");
  return PTR_ERR(pdata->snvs);
 }

 if (of_property_read_u32(np, "linux,keycode", &pdata->keycode)) {
  pdata->keycode = KEY_POWER;
  dev_warn(&pdev->dev, "KEY_POWER without setting in dts\n");
 }

 pdata->wakeup = of_property_read_bool(np, "wakeup-source");

 pdata->irq = platform_get_irq(pdev, 0);
 if (pdata->irq < 0)
  return -EINVAL;

 regmap_update_bits(pdata->snvs, SNVS_LPCR_REG, SNVS_LPCR_DEP_EN, SNVS_LPCR_DEP_EN);


 regmap_write(pdata->snvs, SNVS_LPSR_REG, SNVS_LPSR_SPO);

 timer_setup(&pdata->check_timer, imx_imx_snvs_check_for_events, 0);

 input = devm_input_allocate_device(&pdev->dev);
 if (!input) {
  dev_err(&pdev->dev, "failed to allocate the input device\n");
  return -ENOMEM;
 }

 input->name = pdev->name;
 input->phys = "snvs-pwrkey/input0";
 input->id.bustype = BUS_HOST;

 input_set_capability(input, EV_KEY, pdata->keycode);


 error = devm_add_action(&pdev->dev, imx_snvs_pwrkey_act, pdata);
 if (error) {
  dev_err(&pdev->dev, "failed to register remove action\n");
  return error;
 }

 pdata->input = input;
 platform_set_drvdata(pdev, pdata);

 error = devm_request_irq(&pdev->dev, pdata->irq,
          imx_snvs_pwrkey_interrupt,
          0, pdev->name, pdev);

 if (error) {
  dev_err(&pdev->dev, "interrupt not available.\n");
  return error;
 }

 error = input_register_device(input);
 if (error < 0) {
  dev_err(&pdev->dev, "failed to register input device\n");
  return error;
 }

 device_init_wakeup(&pdev->dev, pdata->wakeup);
 error = dev_pm_set_wake_irq(&pdev->dev, pdata->irq);
 if (error)
  dev_err(&pdev->dev, "irq wake enable failed.\n");

 return 0;
}
