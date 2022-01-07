
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em_gio_priv {int irq_domain; } ;
typedef int irqreturn_t ;


 int BIT (unsigned int) ;
 int GIO_IIR ;
 int GIO_MST ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int __ffs (unsigned long) ;
 unsigned long em_gio_read (struct em_gio_priv*,int ) ;
 int em_gio_write (struct em_gio_priv*,int ,int ) ;
 int generic_handle_irq (int ) ;
 int irq_find_mapping (int ,unsigned int) ;

__attribute__((used)) static irqreturn_t em_gio_irq_handler(int irq, void *dev_id)
{
 struct em_gio_priv *p = dev_id;
 unsigned long pending;
 unsigned int offset, irqs_handled = 0;

 while ((pending = em_gio_read(p, GIO_MST))) {
  offset = __ffs(pending);
  em_gio_write(p, GIO_IIR, BIT(offset));
  generic_handle_irq(irq_find_mapping(p->irq_domain, offset));
  irqs_handled++;
 }

 return irqs_handled ? IRQ_HANDLED : IRQ_NONE;
}
