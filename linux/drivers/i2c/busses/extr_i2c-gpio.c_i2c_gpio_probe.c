
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {struct device_node* of_node; } ;
struct platform_device {int id; struct device dev; } ;
struct i2c_gpio_platform_data {int udelay; int timeout; scalar_t__ scl_is_output_only; scalar_t__ scl_is_open_drain; scalar_t__ sda_is_open_drain; } ;
struct i2c_algo_bit_data {int can_do_atomic; int udelay; int timeout; struct i2c_gpio_private_data* data; int getsda; int getscl; int setscl; int setsda; } ;
struct TYPE_2__ {struct device_node* of_node; struct device* parent; } ;
struct i2c_adapter {int class; int nr; TYPE_1__ dev; struct i2c_algo_bit_data* algo_data; int name; int owner; } ;
struct i2c_gpio_private_data {void* scl; void* sda; struct i2c_gpio_platform_data pdata; struct i2c_algo_bit_data bit_data; struct i2c_adapter adap; } ;
struct device_node {int dummy; } ;
typedef enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 int GPIOD_OUT_HIGH_OPEN_DRAIN ;
 int HZ ;
 int I2C_CLASS_HWMON ;
 int I2C_CLASS_SPD ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int THIS_MODULE ;
 int desc_to_gpio (void*) ;
 scalar_t__ dev_get_platdata (struct device*) ;
 int dev_info (struct device*,char*,int ,int ,char*) ;
 int dev_name (struct device*) ;
 int dev_warn (struct device*,char*) ;
 struct i2c_gpio_private_data* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ gpiod_cansleep (void*) ;
 int i2c_bit_add_numbered_bus (struct i2c_adapter*) ;
 int i2c_gpio_fault_injector_init (struct platform_device*) ;
 void* i2c_gpio_get_desc (struct device*,char*,int,int) ;
 int i2c_gpio_getscl ;
 int i2c_gpio_getsda ;
 int i2c_gpio_setscl_val ;
 int i2c_gpio_setsda_val ;
 int memcpy (struct i2c_gpio_platform_data*,scalar_t__,int) ;
 int of_i2c_gpio_get_props (struct device_node*,struct i2c_gpio_platform_data*) ;
 int platform_set_drvdata (struct platform_device*,struct i2c_gpio_private_data*) ;
 int snprintf (int ,int,char*,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int i2c_gpio_probe(struct platform_device *pdev)
{
 struct i2c_gpio_private_data *priv;
 struct i2c_gpio_platform_data *pdata;
 struct i2c_algo_bit_data *bit_data;
 struct i2c_adapter *adap;
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 enum gpiod_flags gflags;
 int ret;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 adap = &priv->adap;
 bit_data = &priv->bit_data;
 pdata = &priv->pdata;

 if (np) {
  of_i2c_gpio_get_props(np, pdata);
 } else {




  if (dev_get_platdata(dev))
   memcpy(pdata, dev_get_platdata(dev), sizeof(*pdata));
 }
 if (pdata->sda_is_open_drain)
  gflags = GPIOD_OUT_HIGH;
 else
  gflags = GPIOD_OUT_HIGH_OPEN_DRAIN;
 priv->sda = i2c_gpio_get_desc(dev, "sda", 0, gflags);
 if (IS_ERR(priv->sda))
  return PTR_ERR(priv->sda);

 if (pdata->scl_is_open_drain)
  gflags = GPIOD_OUT_HIGH;
 else
  gflags = GPIOD_OUT_HIGH_OPEN_DRAIN;
 priv->scl = i2c_gpio_get_desc(dev, "scl", 1, gflags);
 if (IS_ERR(priv->scl))
  return PTR_ERR(priv->scl);

 if (gpiod_cansleep(priv->sda) || gpiod_cansleep(priv->scl))
  dev_warn(dev, "Slow GPIO pins might wreak havoc into I2C/SMBus bus timing");
 else
  bit_data->can_do_atomic = 1;

 bit_data->setsda = i2c_gpio_setsda_val;
 bit_data->setscl = i2c_gpio_setscl_val;

 if (!pdata->scl_is_output_only)
  bit_data->getscl = i2c_gpio_getscl;
 bit_data->getsda = i2c_gpio_getsda;

 if (pdata->udelay)
  bit_data->udelay = pdata->udelay;
 else if (pdata->scl_is_output_only)
  bit_data->udelay = 50;
 else
  bit_data->udelay = 5;

 if (pdata->timeout)
  bit_data->timeout = pdata->timeout;
 else
  bit_data->timeout = HZ / 10;

 bit_data->data = priv;

 adap->owner = THIS_MODULE;
 if (np)
  strlcpy(adap->name, dev_name(dev), sizeof(adap->name));
 else
  snprintf(adap->name, sizeof(adap->name), "i2c-gpio%d", pdev->id);

 adap->algo_data = bit_data;
 adap->class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
 adap->dev.parent = dev;
 adap->dev.of_node = np;

 adap->nr = pdev->id;
 ret = i2c_bit_add_numbered_bus(adap);
 if (ret)
  return ret;

 platform_set_drvdata(pdev, priv);






 dev_info(dev, "using lines %u (SDA) and %u (SCL%s)\n",
   desc_to_gpio(priv->sda), desc_to_gpio(priv->scl),
   pdata->scl_is_output_only
   ? ", no clock stretching" : "");

 i2c_gpio_fault_injector_init(pdev);

 return 0;
}
