
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_msg {scalar_t__ data; int address_lo; int address_hi; } ;
struct irq_data {int hwirq; } ;
struct alpine_msix_data {int addr; } ;
typedef int phys_addr_t ;


 struct alpine_msix_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 int lower_32_bits (int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void alpine_msix_compose_msi_msg(struct irq_data *data,
     struct msi_msg *msg)
{
 struct alpine_msix_data *priv = irq_data_get_irq_chip_data(data);
 phys_addr_t msg_addr = priv->addr;

 msg_addr |= (data->hwirq << 3);

 msg->address_hi = upper_32_bits(msg_addr);
 msg->address_lo = lower_32_bits(msg_addr);
 msg->data = 0;
}
