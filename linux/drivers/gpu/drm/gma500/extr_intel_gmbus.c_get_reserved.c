
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_gpio {int reg; struct drm_psb_private* dev_priv; } ;
struct drm_psb_private {int dummy; } ;


 int GMBUS_REG_READ (int ) ;
 int GPIO_CLOCK_PULLUP_DISABLE ;
 int GPIO_DATA_PULLUP_DISABLE ;

__attribute__((used)) static u32 get_reserved(struct intel_gpio *gpio)
{
 struct drm_psb_private *dev_priv = gpio->dev_priv;
 u32 reserved = 0;


 reserved = GMBUS_REG_READ(gpio->reg) &
         (GPIO_DATA_PULLUP_DISABLE |
          GPIO_CLOCK_PULLUP_DISABLE);

 return reserved;
}
