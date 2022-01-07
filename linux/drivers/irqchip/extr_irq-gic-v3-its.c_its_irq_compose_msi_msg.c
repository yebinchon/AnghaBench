
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct msi_msg {int data; int address_hi; int address_lo; } ;
struct its_node {int (* get_msi_base ) (struct its_device*) ;} ;
struct its_device {struct its_node* its; } ;
struct irq_data {int dummy; } ;


 int iommu_dma_compose_msi_msg (int ,struct msi_msg*) ;
 struct its_device* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_data_get_msi_desc (struct irq_data*) ;
 int its_get_event_id (struct irq_data*) ;
 int lower_32_bits (int ) ;
 int stub1 (struct its_device*) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void its_irq_compose_msi_msg(struct irq_data *d, struct msi_msg *msg)
{
 struct its_device *its_dev = irq_data_get_irq_chip_data(d);
 struct its_node *its;
 u64 addr;

 its = its_dev->its;
 addr = its->get_msi_base(its_dev);

 msg->address_lo = lower_32_bits(addr);
 msg->address_hi = upper_32_bits(addr);
 msg->data = its_get_event_id(d);

 iommu_dma_compose_msi_msg(irq_data_get_msi_desc(d), msg);
}
