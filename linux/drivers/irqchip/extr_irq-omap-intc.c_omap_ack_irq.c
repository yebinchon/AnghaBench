
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int INTC_CONTROL ;
 int intc_writel (int ,int) ;

__attribute__((used)) static void omap_ack_irq(struct irq_data *d)
{
 intc_writel(INTC_CONTROL, 0x1);
}
