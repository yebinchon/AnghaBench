
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int parent_data; } ;


 int LPI_PROP_ENABLED ;
 int its_vpe_send_inv (struct irq_data*) ;
 int lpi_write_config (int ,int ,int ) ;

__attribute__((used)) static void its_vpe_unmask_irq(struct irq_data *d)
{

 lpi_write_config(d->parent_data, 0, LPI_PROP_ENABLED);
 its_vpe_send_inv(d);
}
