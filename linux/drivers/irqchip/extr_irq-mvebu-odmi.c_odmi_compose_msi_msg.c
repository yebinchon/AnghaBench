
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ start; } ;
struct odmi_data {TYPE_1__ res; } ;
struct msi_msg {unsigned int data; int address_lo; int address_hi; } ;
struct irq_data {int hwirq; } ;
typedef scalar_t__ phys_addr_t ;


 scalar_t__ GICP_ODMIN_SET ;
 unsigned int GICP_ODMI_INT_NUM_SHIFT ;
 unsigned int NODMIS_MASK ;
 int NODMIS_PER_FRAME ;
 size_t NODMIS_SHIFT ;
 scalar_t__ WARN_ON (int) ;
 int lower_32_bits (scalar_t__) ;
 struct odmi_data* odmis ;
 int odmis_count ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static void odmi_compose_msi_msg(struct irq_data *d, struct msi_msg *msg)
{
 struct odmi_data *odmi;
 phys_addr_t addr;
 unsigned int odmin;

 if (WARN_ON(d->hwirq >= odmis_count * NODMIS_PER_FRAME))
  return;

 odmi = &odmis[d->hwirq >> NODMIS_SHIFT];
 odmin = d->hwirq & NODMIS_MASK;

 addr = odmi->res.start + GICP_ODMIN_SET;

 msg->address_hi = upper_32_bits(addr);
 msg->address_lo = lower_32_bits(addr);
 msg->data = odmin << GICP_ODMI_INT_NUM_SHIFT;
}
