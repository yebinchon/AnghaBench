
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_5__ {int * parent; } ;
struct i2c_adapter {TYPE_1__ dev; TYPE_4__* algo_data; int owner; int name; } ;
struct TYPE_8__ {struct intel_gpio* data; int timeout; int udelay; int getscl; int getsda; int setscl; int setsda; } ;
struct intel_gpio {int reg; struct i2c_adapter adapter; TYPE_4__ algo; struct drm_psb_private* dev_priv; } ;
struct drm_psb_private {TYPE_3__* dev; } ;
struct TYPE_7__ {TYPE_2__* pdev; } ;
struct TYPE_6__ {int dev; } ;


 size_t ARRAY_SIZE (int const*) ;
 int GFP_KERNEL ;






 int I2C_RISEFALL_TIME ;
 int THIS_MODULE ;
 int get_clock ;
 int get_data ;
 scalar_t__ i2c_bit_add_bus (struct i2c_adapter*) ;
 int kfree (struct intel_gpio*) ;
 struct intel_gpio* kzalloc (int,int ) ;
 int set_clock ;
 int set_data ;
 int snprintf (int ,int,char*,char) ;
 int usecs_to_jiffies (int) ;

__attribute__((used)) static struct i2c_adapter *
intel_gpio_create(struct drm_psb_private *dev_priv, u32 pin)
{
 static const int map_pin_to_reg[] = {
  0,
  132,
  133,
  131,
  130,
  129,
  0,
  128,
 };
 struct intel_gpio *gpio;

 if (pin >= ARRAY_SIZE(map_pin_to_reg) || !map_pin_to_reg[pin])
  return ((void*)0);

 gpio = kzalloc(sizeof(struct intel_gpio), GFP_KERNEL);
 if (gpio == ((void*)0))
  return ((void*)0);

 gpio->reg = map_pin_to_reg[pin];
 gpio->dev_priv = dev_priv;

 snprintf(gpio->adapter.name, sizeof(gpio->adapter.name),
   "gma500 GPIO%c", "?BACDE?F"[pin]);
 gpio->adapter.owner = THIS_MODULE;
 gpio->adapter.algo_data = &gpio->algo;
 gpio->adapter.dev.parent = &dev_priv->dev->pdev->dev;
 gpio->algo.setsda = set_data;
 gpio->algo.setscl = set_clock;
 gpio->algo.getsda = get_data;
 gpio->algo.getscl = get_clock;
 gpio->algo.udelay = I2C_RISEFALL_TIME;
 gpio->algo.timeout = usecs_to_jiffies(2200);
 gpio->algo.data = gpio;

 if (i2c_bit_add_bus(&gpio->adapter))
  goto out_free;

 return &gpio->adapter;

out_free:
 kfree(gpio);
 return ((void*)0);
}
