
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct lpc32xx_irq_chip {scalar_t__ base; } ;


 scalar_t__ readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline u32 lpc32xx_ic_read(struct lpc32xx_irq_chip *ic, u32 reg)
{
 return readl_relaxed(ic->base + reg);
}
