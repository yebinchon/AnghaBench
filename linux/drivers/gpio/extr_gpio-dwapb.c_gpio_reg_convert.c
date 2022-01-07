
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct dwapb_gpio {int flags; } ;


 int GPIO_REG_OFFSET_V2 ;
 unsigned int gpio_reg_v2_convert (unsigned int) ;

__attribute__((used)) static inline u32 gpio_reg_convert(struct dwapb_gpio *gpio, unsigned int offset)
{
 if (gpio->flags & GPIO_REG_OFFSET_V2)
  return gpio_reg_v2_convert(offset);

 return offset;
}
