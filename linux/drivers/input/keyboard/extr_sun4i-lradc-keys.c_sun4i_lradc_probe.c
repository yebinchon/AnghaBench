
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sun4i_lradc_data {int chan0_map_count; TYPE_3__* input; int base; TYPE_2__* chan0_map; struct device* dev; int vref_supply; int variant; } ;
struct device {int dummy; } ;
struct platform_device {int name; struct device dev; } ;
struct TYPE_6__ {int vendor; int product; int version; int bustype; } ;
struct TYPE_8__ {char* phys; int keybit; int evbit; TYPE_1__ id; int close; int open; int name; } ;
struct TYPE_7__ {int keycode; } ;


 int BUS_HOST ;
 int EINVAL ;
 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int __set_bit (int ,int ) ;
 int dev_err (struct device*,char*) ;
 TYPE_3__* devm_input_allocate_device (struct device*) ;
 int devm_ioremap_resource (struct device*,int ) ;
 struct sun4i_lradc_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_regulator_get (struct device*,char*) ;
 int devm_request_irq (struct device*,int ,int ,int ,char*,struct sun4i_lradc_data*) ;
 int input_register_device (TYPE_3__*) ;
 int input_set_drvdata (TYPE_3__*,struct sun4i_lradc_data*) ;
 int of_device_get_match_data (struct device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_get_resource (struct platform_device*,int ,int ) ;
 int sun4i_lradc_close ;
 int sun4i_lradc_irq ;
 int sun4i_lradc_load_dt_keymap (struct device*,struct sun4i_lradc_data*) ;
 int sun4i_lradc_open ;

__attribute__((used)) static int sun4i_lradc_probe(struct platform_device *pdev)
{
 struct sun4i_lradc_data *lradc;
 struct device *dev = &pdev->dev;
 int i;
 int error;

 lradc = devm_kzalloc(dev, sizeof(struct sun4i_lradc_data), GFP_KERNEL);
 if (!lradc)
  return -ENOMEM;

 error = sun4i_lradc_load_dt_keymap(dev, lradc);
 if (error)
  return error;

 lradc->variant = of_device_get_match_data(&pdev->dev);
 if (!lradc->variant) {
  dev_err(&pdev->dev, "Missing sun4i-a10-lradc-keys variant\n");
  return -EINVAL;
 }

 lradc->vref_supply = devm_regulator_get(dev, "vref");
 if (IS_ERR(lradc->vref_supply))
  return PTR_ERR(lradc->vref_supply);

 lradc->dev = dev;
 lradc->input = devm_input_allocate_device(dev);
 if (!lradc->input)
  return -ENOMEM;

 lradc->input->name = pdev->name;
 lradc->input->phys = "sun4i_lradc/input0";
 lradc->input->open = sun4i_lradc_open;
 lradc->input->close = sun4i_lradc_close;
 lradc->input->id.bustype = BUS_HOST;
 lradc->input->id.vendor = 0x0001;
 lradc->input->id.product = 0x0001;
 lradc->input->id.version = 0x0100;

 __set_bit(EV_KEY, lradc->input->evbit);
 for (i = 0; i < lradc->chan0_map_count; i++)
  __set_bit(lradc->chan0_map[i].keycode, lradc->input->keybit);

 input_set_drvdata(lradc->input, lradc);

 lradc->base = devm_ioremap_resource(dev,
         platform_get_resource(pdev, IORESOURCE_MEM, 0));
 if (IS_ERR(lradc->base))
  return PTR_ERR(lradc->base);

 error = devm_request_irq(dev, platform_get_irq(pdev, 0),
     sun4i_lradc_irq, 0,
     "sun4i-a10-lradc-keys", lradc);
 if (error)
  return error;

 error = input_register_device(lradc->input);
 if (error)
  return error;

 return 0;
}
