
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tangox_irq_chip {scalar_t__ base; } ;


 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void intc_writel(struct tangox_irq_chip *chip, int reg, u32 val)
{
 writel_relaxed(val, chip->base + reg);
}
