
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct psb_intel_i2c_chan {int reg; struct drm_device* drm_dev; } ;
struct drm_device {int dummy; } ;


 int GPIO_CLOCK_VAL_IN ;
 int REG_READ (int ) ;

__attribute__((used)) static int get_clock(void *data)
{
 struct psb_intel_i2c_chan *chan = data;
 struct drm_device *dev = chan->drm_dev;
 u32 val;

 val = REG_READ(chan->reg);
 return (val & GPIO_CLOCK_VAL_IN) != 0;
}
