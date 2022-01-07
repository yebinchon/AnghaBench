
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tangox_irq_chip {scalar_t__ base; } ;


 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline u32 intc_readl(struct tangox_irq_chip *chip, int reg)
{
 return readl_relaxed(chip->base + reg);
}
