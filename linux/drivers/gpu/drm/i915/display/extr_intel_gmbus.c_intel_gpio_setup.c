
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct i2c_algo_bit_data* algo_data; } ;
struct i2c_algo_bit_data {struct intel_gmbus* data; int timeout; int udelay; int post_xfer; int pre_xfer; int getscl; int getsda; int setscl; int setsda; } ;
struct intel_gmbus {TYPE_1__ adapter; int gpio_reg; struct i2c_algo_bit_data bit_algo; struct drm_i915_private* dev_priv; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {int gpio; } ;


 int GPIO (int ) ;
 int I2C_RISEFALL_TIME ;
 int get_clock ;
 int get_data ;
 TYPE_2__* get_gmbus_pin (struct drm_i915_private*,unsigned int) ;
 int intel_gpio_post_xfer ;
 int intel_gpio_pre_xfer ;
 int set_clock ;
 int set_data ;
 int usecs_to_jiffies (int) ;

__attribute__((used)) static void
intel_gpio_setup(struct intel_gmbus *bus, unsigned int pin)
{
 struct drm_i915_private *dev_priv = bus->dev_priv;
 struct i2c_algo_bit_data *algo;

 algo = &bus->bit_algo;

 bus->gpio_reg = GPIO(get_gmbus_pin(dev_priv, pin)->gpio);
 bus->adapter.algo_data = algo;
 algo->setsda = set_data;
 algo->setscl = set_clock;
 algo->getsda = get_data;
 algo->getscl = get_clock;
 algo->pre_xfer = intel_gpio_pre_xfer;
 algo->post_xfer = intel_gpio_post_xfer;
 algo->udelay = I2C_RISEFALL_TIME;
 algo->timeout = usecs_to_jiffies(2200);
 algo->data = bus;
}
