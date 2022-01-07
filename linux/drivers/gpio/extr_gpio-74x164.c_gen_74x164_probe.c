
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spi_device {int bits_per_word; int dev; int modalias; } ;
struct TYPE_2__ {int base; int ngpio; int can_sleep; int owner; int * parent; int set_multiple; int set; int get; int direction_output; int label; } ;
struct gen_74x164_chip {int registers; int lock; TYPE_1__ gpio_chip; int gpiod_oe; } ;


 int EINVAL ;
 int ENOMEM ;
 int GEN_74X164_NUMBER_GPIOS ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int __gen_74x164_write_config (struct gen_74x164_chip*) ;
 int dev_err (int *,char*,...) ;
 int device_property_read_u32 (int *,char*,int*) ;
 int devm_gpiod_get_optional (int *,char*,int ) ;
 struct gen_74x164_chip* devm_kzalloc (int *,int,int ) ;
 int gen_74x164_direction_output ;
 int gen_74x164_get_value ;
 int gen_74x164_set_multiple ;
 int gen_74x164_set_value ;
 int gpiochip_add_data (TYPE_1__*,struct gen_74x164_chip*) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int spi_set_drvdata (struct spi_device*,struct gen_74x164_chip*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int gen_74x164_probe(struct spi_device *spi)
{
 struct gen_74x164_chip *chip;
 u32 nregs;
 int ret;




 spi->bits_per_word = 8;

 ret = spi_setup(spi);
 if (ret < 0)
  return ret;

 ret = device_property_read_u32(&spi->dev, "registers-number", &nregs);
 if (ret) {
  dev_err(&spi->dev, "Missing 'registers-number' property.\n");
  return -EINVAL;
 }

 chip = devm_kzalloc(&spi->dev, sizeof(*chip) + nregs, GFP_KERNEL);
 if (!chip)
  return -ENOMEM;

 chip->gpiod_oe = devm_gpiod_get_optional(&spi->dev, "enable",
       GPIOD_OUT_LOW);
 if (IS_ERR(chip->gpiod_oe))
  return PTR_ERR(chip->gpiod_oe);

 gpiod_set_value_cansleep(chip->gpiod_oe, 1);

 spi_set_drvdata(spi, chip);

 chip->gpio_chip.label = spi->modalias;
 chip->gpio_chip.direction_output = gen_74x164_direction_output;
 chip->gpio_chip.get = gen_74x164_get_value;
 chip->gpio_chip.set = gen_74x164_set_value;
 chip->gpio_chip.set_multiple = gen_74x164_set_multiple;
 chip->gpio_chip.base = -1;

 chip->registers = nregs;
 chip->gpio_chip.ngpio = GEN_74X164_NUMBER_GPIOS * chip->registers;

 chip->gpio_chip.can_sleep = 1;
 chip->gpio_chip.parent = &spi->dev;
 chip->gpio_chip.owner = THIS_MODULE;

 mutex_init(&chip->lock);

 ret = __gen_74x164_write_config(chip);
 if (ret) {
  dev_err(&spi->dev, "Failed writing: %d\n", ret);
  goto exit_destroy;
 }

 ret = gpiochip_add_data(&chip->gpio_chip, chip);
 if (!ret)
  return 0;

exit_destroy:
 mutex_destroy(&chip->lock);

 return ret;
}
