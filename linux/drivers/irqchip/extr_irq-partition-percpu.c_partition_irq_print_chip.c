
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct partition_desc {int chained_desc; } ;
struct irq_data {int hwirq; } ;
struct irq_chip {int name; } ;


 struct partition_desc* irq_data_get_irq_chip_data (struct irq_data*) ;
 struct irq_chip* irq_desc_get_chip (int ) ;
 struct irq_data* irq_desc_get_irq_data (int ) ;
 int seq_printf (struct seq_file*,char*,int ,int ) ;

__attribute__((used)) static void partition_irq_print_chip(struct irq_data *d, struct seq_file *p)
{
 struct partition_desc *part = irq_data_get_irq_chip_data(d);
 struct irq_chip *chip = irq_desc_get_chip(part->chained_desc);
 struct irq_data *data = irq_desc_get_irq_data(part->chained_desc);

 seq_printf(p, " %5s-%lu", chip->name, data->hwirq);
}
