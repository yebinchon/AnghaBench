
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 int BIT (int ) ;
 int NDS32_SR_INT_PEND2 ;
 int __nds32__mtsr_dsb (int ,int ) ;

__attribute__((used)) static void ativic32_ack_irq(struct irq_data *data)
{
 __nds32__mtsr_dsb(BIT(data->hwirq), NDS32_SR_INT_PEND2);
}
