
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_chip_generic {int dummy; } ;


 int irq_reg_writel (struct irq_chip_generic*,int ,int ) ;

__attribute__((used)) static inline void sunxi_sc_nmi_write(struct irq_chip_generic *gc, u32 off,
          u32 val)
{
 irq_reg_writel(gc, val, off);
}
