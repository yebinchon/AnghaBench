
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct irq_source_info {int ack_reg; int ack_mask; int ack_value; } ;
struct irq_service {int ctx; } ;


 int dm_read_reg (int ,int) ;
 int dm_write_reg (int ,int,int) ;

void dal_irq_service_ack_generic(
 struct irq_service *irq_service,
 const struct irq_source_info *info)
{
 uint32_t addr = info->ack_reg;
 uint32_t value = dm_read_reg(irq_service->ctx, addr);

 value = (value & ~info->ack_mask) |
  (info->ack_value & info->ack_mask);
 dm_write_reg(irq_service->ctx, addr, value);
}
