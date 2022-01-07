
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct psb_intel_i2c_chan {int reg; struct drm_device* drm_dev; } ;
struct drm_device {int dummy; } ;


 int GPIO_CLOCK_DIR_IN ;
 int GPIO_CLOCK_DIR_MASK ;
 int GPIO_CLOCK_DIR_OUT ;
 int GPIO_CLOCK_PULLUP_DISABLE ;
 int GPIO_CLOCK_VAL_MASK ;
 int GPIO_DATA_PULLUP_DISABLE ;
 int I2C_RISEFALL_TIME ;
 int REG_READ (int ) ;
 int REG_WRITE (int ,int) ;
 int udelay (int ) ;

__attribute__((used)) static void set_clock(void *data, int state_high)
{
 struct psb_intel_i2c_chan *chan = data;
 struct drm_device *dev = chan->drm_dev;
 u32 reserved = 0, clock_bits;


 reserved =
      REG_READ(chan->reg) & (GPIO_DATA_PULLUP_DISABLE |
        GPIO_CLOCK_PULLUP_DISABLE);

 if (state_high)
  clock_bits = GPIO_CLOCK_DIR_IN | GPIO_CLOCK_DIR_MASK;
 else
  clock_bits = GPIO_CLOCK_DIR_OUT | GPIO_CLOCK_DIR_MASK |
      GPIO_CLOCK_VAL_MASK;
 REG_WRITE(chan->reg, reserved | clock_bits);
 udelay(I2C_RISEFALL_TIME);
}
