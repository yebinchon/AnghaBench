
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;
struct combiner_reg {int enabled; } ;
struct combiner {struct combiner_reg* regs; } ;


 int REG_SIZE ;
 int clear_bit (int,int *) ;
 struct combiner* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void combiner_irq_chip_mask_irq(struct irq_data *data)
{
 struct combiner *combiner = irq_data_get_irq_chip_data(data);
 struct combiner_reg *reg = combiner->regs + data->hwirq / REG_SIZE;

 clear_bit(data->hwirq % REG_SIZE, &reg->enabled);
}
