
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 scalar_t__ IPR ;
 int ctrl_bset (int,scalar_t__) ;
 int* ipr_bit ;

__attribute__((used)) static void h8300h_enable_irq(struct irq_data *data)
{
 int bit;
 int irq = data->irq - 12;

 bit = ipr_bit[irq];
 if (bit >= 0) {
  if (bit < 8)
   ctrl_bset(bit & 7, IPR);
  else
   ctrl_bset(bit & 7, (IPR+1));
 }
}
