
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpio_rcar_priv {scalar_t__ base; } ;


 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static inline void gpio_rcar_write(struct gpio_rcar_priv *p, int offs,
       u32 value)
{
 iowrite32(value, p->base + offs);
}
