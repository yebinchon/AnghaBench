
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_chip_generic {int dummy; } ;


 int irq_reg_readl (struct irq_chip_generic*,int ) ;

__attribute__((used)) static inline u32 sunxi_sc_nmi_read(struct irq_chip_generic *gc, u32 off)
{
 return irq_reg_readl(gc, off);
}
