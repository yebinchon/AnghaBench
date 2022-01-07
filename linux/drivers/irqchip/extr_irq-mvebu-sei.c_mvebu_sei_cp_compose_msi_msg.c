
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mvebu_sei {TYPE_3__* caps; TYPE_1__* res; } ;
struct msi_msg {int address_hi; int address_lo; scalar_t__ data; } ;
struct irq_data {scalar_t__ hwirq; struct mvebu_sei* chip_data; } ;
typedef scalar_t__ phys_addr_t ;
struct TYPE_5__ {scalar_t__ first; } ;
struct TYPE_6__ {TYPE_2__ cp_range; } ;
struct TYPE_4__ {scalar_t__ start; } ;


 scalar_t__ GICP_SET_SEI_OFFSET ;
 int lower_32_bits (scalar_t__) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static void mvebu_sei_cp_compose_msi_msg(struct irq_data *data,
      struct msi_msg *msg)
{
 struct mvebu_sei *sei = data->chip_data;
 phys_addr_t set = sei->res->start + GICP_SET_SEI_OFFSET;

 msg->data = data->hwirq + sei->caps->cp_range.first;
 msg->address_lo = lower_32_bits(set);
 msg->address_hi = upper_32_bits(set);
}
