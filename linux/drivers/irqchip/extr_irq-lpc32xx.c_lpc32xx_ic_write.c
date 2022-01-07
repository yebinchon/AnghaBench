
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct lpc32xx_irq_chip {scalar_t__ base; } ;


 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void lpc32xx_ic_write(struct lpc32xx_irq_chip *ic,
        u32 reg, u32 val)
{
 writel_relaxed(val, ic->base + reg);
}
