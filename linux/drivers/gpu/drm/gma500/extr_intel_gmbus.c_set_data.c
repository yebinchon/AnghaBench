
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_gpio {int reg; struct drm_psb_private* dev_priv; } ;
struct drm_psb_private {int dummy; } ;


 int GMBUS_REG_READ (int ) ;
 int GMBUS_REG_WRITE (int ,int) ;
 int GPIO_DATA_DIR_IN ;
 int GPIO_DATA_DIR_MASK ;
 int GPIO_DATA_DIR_OUT ;
 int GPIO_DATA_VAL_MASK ;
 int get_reserved (struct intel_gpio*) ;

__attribute__((used)) static void set_data(void *data, int state_high)
{
 struct intel_gpio *gpio = data;
 struct drm_psb_private *dev_priv = gpio->dev_priv;
 u32 reserved = get_reserved(gpio);
 u32 data_bits;

 if (state_high)
  data_bits = GPIO_DATA_DIR_IN | GPIO_DATA_DIR_MASK;
 else
  data_bits = GPIO_DATA_DIR_OUT | GPIO_DATA_DIR_MASK |
   GPIO_DATA_VAL_MASK;

 GMBUS_REG_WRITE(gpio->reg, reserved | data_bits);
 GMBUS_REG_READ(gpio->reg);
}
