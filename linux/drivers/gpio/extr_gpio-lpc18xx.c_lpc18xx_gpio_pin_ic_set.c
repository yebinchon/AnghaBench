
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct lpc18xx_gpio_pin_ic {scalar_t__ base; } ;


 int BIT (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void lpc18xx_gpio_pin_ic_set(struct lpc18xx_gpio_pin_ic *ic,
        u32 pin, u32 reg)
{
 writel_relaxed(BIT(pin), ic->base + reg);
}
