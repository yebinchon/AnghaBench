
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_gpio {int reg; struct drm_psb_private* dev_priv; } ;
struct drm_psb_private {int dummy; } ;


 int GMBUS_REG_READ (int ) ;
 int GMBUS_REG_WRITE (int ,int) ;
 int GPIO_DATA_DIR_MASK ;
 int GPIO_DATA_VAL_IN ;
 int get_reserved (struct intel_gpio*) ;

__attribute__((used)) static int get_data(void *data)
{
 struct intel_gpio *gpio = data;
 struct drm_psb_private *dev_priv = gpio->dev_priv;
 u32 reserved = get_reserved(gpio);
 GMBUS_REG_WRITE(gpio->reg, reserved | GPIO_DATA_DIR_MASK);
 GMBUS_REG_WRITE(gpio->reg, reserved);
 return (GMBUS_REG_READ(gpio->reg) & GPIO_DATA_VAL_IN) != 0;
}
