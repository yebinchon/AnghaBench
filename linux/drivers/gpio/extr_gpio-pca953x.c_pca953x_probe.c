
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct regulator {int dummy; } ;
struct pca953x_platform_data {int irq_base; int gpio_base; int (* setup ) (struct i2c_client*,int ,int ,int ) ;int context; int names; int invert; } ;
struct TYPE_2__ {int ngpio; int base; } ;
struct pca953x_chip {int gpio_start; uintptr_t driver_data; struct regulator* regulator; TYPE_1__ gpio_chip; int * regs; int i2c_lock; struct regulator* regmap; struct i2c_client* client; int names; } ;
struct i2c_device_id {uintptr_t driver_data; } ;
struct i2c_client {int dev; int adapter; } ;
typedef struct regulator gpio_desc ;


 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (struct regulator*) ;
 scalar_t__ PCA953X_TYPE ;
 scalar_t__ PCA_CHIP_TYPE (int) ;
 int PCA_GPIO_MASK ;
 int PTR_ERR (struct regulator*) ;
 int dev_err (int *,char*,int) ;
 struct pca953x_platform_data* dev_get_platdata (int *) ;
 int dev_warn (int *,char*,int) ;
 void* device_get_match_data (int *) ;
 int device_pca957x_init (struct pca953x_chip*,int ) ;
 int device_pca95xx_init (struct pca953x_chip*,int ) ;
 int devm_gpiochip_add_data (int *,TYPE_1__*,struct pca953x_chip*) ;
 struct regulator* devm_gpiod_get_optional (int *,char*,int ) ;
 struct pca953x_chip* devm_kzalloc (int *,int,int ) ;
 struct regulator* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 struct regulator* devm_regulator_get (int *,char*) ;
 int i2c_adapter_depth (int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct pca953x_chip*) ;
 int lockdep_set_subclass (int *,int ) ;
 int mutex_init (int *) ;
 int pca953x_i2c_regmap ;
 int pca953x_irq_setup (struct pca953x_chip*,int) ;
 int pca953x_regs ;
 int pca953x_setup_gpio (struct pca953x_chip*,int) ;
 int pca957x_regs ;
 int regcache_mark_dirty (struct regulator*) ;
 int regulator_disable (struct regulator*) ;
 int regulator_enable (struct regulator*) ;
 int stub1 (struct i2c_client*,int ,int ,int ) ;

__attribute__((used)) static int pca953x_probe(struct i2c_client *client,
       const struct i2c_device_id *i2c_id)
{
 struct pca953x_platform_data *pdata;
 struct pca953x_chip *chip;
 int irq_base = 0;
 int ret;
 u32 invert = 0;
 struct regulator *reg;

 chip = devm_kzalloc(&client->dev,
   sizeof(struct pca953x_chip), GFP_KERNEL);
 if (chip == ((void*)0))
  return -ENOMEM;

 pdata = dev_get_platdata(&client->dev);
 if (pdata) {
  irq_base = pdata->irq_base;
  chip->gpio_start = pdata->gpio_base;
  invert = pdata->invert;
  chip->names = pdata->names;
 } else {
  struct gpio_desc *reset_gpio;

  chip->gpio_start = -1;
  irq_base = 0;
  reset_gpio = devm_gpiod_get_optional(&client->dev, "reset",
           GPIOD_OUT_LOW);
  if (IS_ERR(reset_gpio))
   return PTR_ERR(reset_gpio);
 }

 chip->client = client;

 reg = devm_regulator_get(&client->dev, "vcc");
 if (IS_ERR(reg)) {
  ret = PTR_ERR(reg);
  if (ret != -EPROBE_DEFER)
   dev_err(&client->dev, "reg get err: %d\n", ret);
  return ret;
 }
 ret = regulator_enable(reg);
 if (ret) {
  dev_err(&client->dev, "reg en err: %d\n", ret);
  return ret;
 }
 chip->regulator = reg;

 if (i2c_id) {
  chip->driver_data = i2c_id->driver_data;
 } else {
  const void *match;

  match = device_get_match_data(&client->dev);
  if (!match) {
   ret = -ENODEV;
   goto err_exit;
  }

  chip->driver_data = (uintptr_t)match;
 }

 i2c_set_clientdata(client, chip);

 chip->regmap = devm_regmap_init_i2c(client, &pca953x_i2c_regmap);
 if (IS_ERR(chip->regmap)) {
  ret = PTR_ERR(chip->regmap);
  goto err_exit;
 }

 regcache_mark_dirty(chip->regmap);

 mutex_init(&chip->i2c_lock);
 lockdep_set_subclass(&chip->i2c_lock,
        i2c_adapter_depth(client->adapter));




 pca953x_setup_gpio(chip, chip->driver_data & PCA_GPIO_MASK);

 if (PCA_CHIP_TYPE(chip->driver_data) == PCA953X_TYPE) {
  chip->regs = &pca953x_regs;
  ret = device_pca95xx_init(chip, invert);
 } else {
  chip->regs = &pca957x_regs;
  ret = device_pca957x_init(chip, invert);
 }
 if (ret)
  goto err_exit;

 ret = devm_gpiochip_add_data(&client->dev, &chip->gpio_chip, chip);
 if (ret)
  goto err_exit;

 ret = pca953x_irq_setup(chip, irq_base);
 if (ret)
  goto err_exit;

 if (pdata && pdata->setup) {
  ret = pdata->setup(client, chip->gpio_chip.base,
    chip->gpio_chip.ngpio, pdata->context);
  if (ret < 0)
   dev_warn(&client->dev, "setup failed, %d\n", ret);
 }

 return 0;

err_exit:
 regulator_disable(chip->regulator);
 return ret;
}
