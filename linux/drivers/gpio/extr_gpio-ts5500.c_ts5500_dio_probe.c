
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char const* label; int base; void* ngpio; int to_irq; int set; int get; int direction_output; int direction_input; struct device* parent; int owner; } ;
struct ts5500_priv {char const* hwirq; TYPE_2__ gpio_chip; int lock; void* pinout; } ;
struct resource {char const* start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
typedef enum ts5500_blocks { ____Placeholder_ts5500_blocks } ts5500_blocks ;
struct TYPE_3__ {int driver_data; } ;


 void* ARRAY_SIZE (void*) ;
 int BIT (int) ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int THIS_MODULE ;




 int dev_err (struct device*,char*,...) ;
 char* dev_name (struct device*) ;
 int devm_gpiochip_add_data (struct device*,TYPE_2__*,struct ts5500_priv*) ;
 struct ts5500_priv* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_region (struct device*,int,int,char const*) ;
 int hex7d_reserved ;
 TYPE_1__* platform_get_device_id (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ts5500_priv*) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ts5500_clear_mask (int ,int) ;
 void* ts5500_dio1 ;
 void* ts5500_dio2 ;
 int ts5500_enable_irq (struct ts5500_priv*) ;
 int ts5500_gpio_get ;
 int ts5500_gpio_input ;
 int ts5500_gpio_output ;
 int ts5500_gpio_set ;
 int ts5500_gpio_to_irq ;
 void* ts5500_lcd ;

__attribute__((used)) static int ts5500_dio_probe(struct platform_device *pdev)
{
 enum ts5500_blocks block = platform_get_device_id(pdev)->driver_data;
 struct device *dev = &pdev->dev;
 const char *name = dev_name(dev);
 struct ts5500_priv *priv;
 struct resource *res;
 unsigned long flags;
 int ret;

 res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (!res) {
  dev_err(dev, "missing IRQ resource\n");
  return -EINVAL;
 }

 priv = devm_kzalloc(dev, sizeof(struct ts5500_priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 platform_set_drvdata(pdev, priv);
 priv->hwirq = res->start;
 spin_lock_init(&priv->lock);

 priv->gpio_chip.owner = THIS_MODULE;
 priv->gpio_chip.label = name;
 priv->gpio_chip.parent = dev;
 priv->gpio_chip.direction_input = ts5500_gpio_input;
 priv->gpio_chip.direction_output = ts5500_gpio_output;
 priv->gpio_chip.get = ts5500_gpio_get;
 priv->gpio_chip.set = ts5500_gpio_set;
 priv->gpio_chip.to_irq = ts5500_gpio_to_irq;
 priv->gpio_chip.base = -1;

 switch (block) {
 case 131:
  priv->pinout = ts5500_dio1;
  priv->gpio_chip.ngpio = ARRAY_SIZE(ts5500_dio1);

  if (!devm_request_region(dev, 0x7a, 3, name)) {
   dev_err(dev, "failed to request %s ports\n", name);
   return -EBUSY;
  }
  break;
 case 130:
  priv->pinout = ts5500_dio2;
  priv->gpio_chip.ngpio = ARRAY_SIZE(ts5500_dio2);

  if (!devm_request_region(dev, 0x7e, 2, name)) {
   dev_err(dev, "failed to request %s ports\n", name);
   return -EBUSY;
  }

  if (hex7d_reserved)
   break;

  if (!devm_request_region(dev, 0x7d, 1, name)) {
   dev_err(dev, "failed to request %s 7D\n", name);
   return -EBUSY;
  }

  hex7d_reserved = 1;
  break;
 case 129:
 case 128:
  priv->pinout = ts5500_lcd;
  priv->gpio_chip.ngpio = ARRAY_SIZE(ts5500_lcd);

  if (!devm_request_region(dev, 0x72, 2, name)) {
   dev_err(dev, "failed to request %s ports\n", name);
   return -EBUSY;
  }

  if (!hex7d_reserved) {
   if (!devm_request_region(dev, 0x7d, 1, name)) {
    dev_err(dev, "failed to request %s 7D\n", name);
    return -EBUSY;
   }

   hex7d_reserved = 1;
  }


  spin_lock_irqsave(&priv->lock, flags);
  ts5500_clear_mask(BIT(4), 0x7d);
  spin_unlock_irqrestore(&priv->lock, flags);
  break;
 }

 ret = devm_gpiochip_add_data(dev, &priv->gpio_chip, priv);
 if (ret) {
  dev_err(dev, "failed to register the gpio chip\n");
  return ret;
 }

 ret = ts5500_enable_irq(priv);
 if (ret) {
  dev_err(dev, "invalid interrupt %d\n", priv->hwirq);
  return ret;
 }

 return 0;
}
