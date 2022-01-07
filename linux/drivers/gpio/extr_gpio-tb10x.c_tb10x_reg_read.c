
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb10x_gpio {scalar_t__ base; } ;


 int ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 tb10x_reg_read(struct tb10x_gpio *gpio, unsigned int offs)
{
 return ioread32(gpio->base + offs);
}
