
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int of_node; } ;
struct spi_device {struct device dev; } ;
struct TYPE_3__ {int ngpio; struct device* parent; } ;
struct pisosr_gpio {int buffer_size; TYPE_1__ chip; int lock; int load_gpio; void* buffer; struct spi_device* spi; } ;


 int DIV_ROUND_UP (int ,int) ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int devm_gpiod_get_optional (struct device*,char*,int ) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int gpiochip_add_data (TYPE_1__*,struct pisosr_gpio*) ;
 int mutex_init (int *) ;
 int of_property_read_u16 (int ,char*,int *) ;
 int spi_set_drvdata (struct spi_device*,struct pisosr_gpio*) ;
 TYPE_1__ template_chip ;

__attribute__((used)) static int pisosr_gpio_probe(struct spi_device *spi)
{
 struct device *dev = &spi->dev;
 struct pisosr_gpio *gpio;
 int ret;

 gpio = devm_kzalloc(dev, sizeof(*gpio), GFP_KERNEL);
 if (!gpio)
  return -ENOMEM;

 spi_set_drvdata(spi, gpio);

 gpio->chip = template_chip;
 gpio->chip.parent = dev;
 of_property_read_u16(dev->of_node, "ngpios", &gpio->chip.ngpio);

 gpio->spi = spi;

 gpio->buffer_size = DIV_ROUND_UP(gpio->chip.ngpio, 8);
 gpio->buffer = devm_kzalloc(dev, gpio->buffer_size, GFP_KERNEL);
 if (!gpio->buffer)
  return -ENOMEM;

 gpio->load_gpio = devm_gpiod_get_optional(dev, "load", GPIOD_OUT_LOW);
 if (IS_ERR(gpio->load_gpio)) {
  ret = PTR_ERR(gpio->load_gpio);
  if (ret != -EPROBE_DEFER)
   dev_err(dev, "Unable to allocate load GPIO\n");
  return ret;
 }

 mutex_init(&gpio->lock);

 ret = gpiochip_add_data(&gpio->chip, gpio);
 if (ret < 0) {
  dev_err(dev, "Unable to register gpiochip\n");
  return ret;
 }

 return 0;
}
