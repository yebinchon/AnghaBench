
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int of_node; struct davinci_gpio_platform_data* platform_data; } ;
struct platform_device {struct device dev; } ;
struct davinci_gpio_platform_data {unsigned int ngpio; int gpio_unbanked; int base; scalar_t__ no_auto_base; } ;
struct TYPE_2__ {unsigned int ngpio; int base; int of_gpio_n_cells; int free; int request; int of_node; struct device* parent; int set; int direction_output; int get; int direction_input; int label; } ;
struct davinci_gpio_controller {int* irqs; TYPE_1__ chip; scalar_t__* regs; int lock; } ;


 unsigned int ARCH_NR_GPIOS ;
 unsigned int DIV_ROUND_UP (unsigned int,int) ;
 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 scalar_t__ WARN_ON (int) ;
 int davinci_direction_in ;
 int davinci_direction_out ;
 int davinci_gpio_get ;
 struct davinci_gpio_platform_data* davinci_gpio_get_pdata (struct platform_device*) ;
 int davinci_gpio_irq_setup (struct platform_device*) ;
 int davinci_gpio_set ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,int) ;
 int dev_name (struct device*) ;
 int devm_gpiochip_add_data (struct device*,TYPE_1__*,struct davinci_gpio_controller*) ;
 struct davinci_gpio_controller* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ devm_platform_ioremap_resource (struct platform_device*,int ) ;
 scalar_t__ gpio_base ;
 int gpiochip_generic_free ;
 int gpiochip_generic_request ;
 scalar_t__ of_property_read_bool (int ,char*) ;
 scalar_t__* offset_array ;
 int platform_get_irq (struct platform_device*,int) ;
 int platform_set_drvdata (struct platform_device*,struct davinci_gpio_controller*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int davinci_gpio_probe(struct platform_device *pdev)
{
 int bank, i, ret = 0;
 unsigned int ngpio, nbank, nirq;
 struct davinci_gpio_controller *chips;
 struct davinci_gpio_platform_data *pdata;
 struct device *dev = &pdev->dev;

 pdata = davinci_gpio_get_pdata(pdev);
 if (!pdata) {
  dev_err(dev, "No platform data found\n");
  return -EINVAL;
 }

 dev->platform_data = pdata;






 ngpio = pdata->ngpio;
 if (ngpio == 0) {
  dev_err(dev, "How many GPIOs?\n");
  return -EINVAL;
 }

 if (WARN_ON(ARCH_NR_GPIOS < ngpio))
  ngpio = ARCH_NR_GPIOS;






 if (pdata->gpio_unbanked)
  nirq = pdata->gpio_unbanked;
 else
  nirq = DIV_ROUND_UP(ngpio, 16);

 chips = devm_kzalloc(dev, sizeof(*chips), GFP_KERNEL);
 if (!chips)
  return -ENOMEM;

 gpio_base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(gpio_base))
  return PTR_ERR(gpio_base);

 for (i = 0; i < nirq; i++) {
  chips->irqs[i] = platform_get_irq(pdev, i);
  if (chips->irqs[i] < 0) {
   if (chips->irqs[i] != -EPROBE_DEFER)
    dev_info(dev, "IRQ not populated, err = %d\n",
      chips->irqs[i]);
   return chips->irqs[i];
  }
 }

 chips->chip.label = dev_name(dev);

 chips->chip.direction_input = davinci_direction_in;
 chips->chip.get = davinci_gpio_get;
 chips->chip.direction_output = davinci_direction_out;
 chips->chip.set = davinci_gpio_set;

 chips->chip.ngpio = ngpio;
 chips->chip.base = pdata->no_auto_base ? pdata->base : -1;
 spin_lock_init(&chips->lock);

 nbank = DIV_ROUND_UP(ngpio, 32);
 for (bank = 0; bank < nbank; bank++)
  chips->regs[bank] = gpio_base + offset_array[bank];

 ret = devm_gpiochip_add_data(dev, &chips->chip, chips);
 if (ret)
  return ret;

 platform_set_drvdata(pdev, chips);
 ret = davinci_gpio_irq_setup(pdev);
 if (ret)
  return ret;

 return 0;
}
