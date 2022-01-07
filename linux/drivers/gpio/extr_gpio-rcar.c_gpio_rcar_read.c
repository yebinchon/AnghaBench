
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpio_rcar_priv {scalar_t__ base; } ;


 int ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 gpio_rcar_read(struct gpio_rcar_priv *p, int offs)
{
 return ioread32(p->base + offs);
}
