
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb10x_gpio {scalar_t__ base; } ;


 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static inline void tb10x_reg_write(struct tb10x_gpio *gpio, unsigned int offs,
    u32 val)
{
 iowrite32(val, gpio->base + offs);
}
