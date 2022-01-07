
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_msg {int dummy; } ;
struct irq_data {struct intel_ir_data* chip_data; } ;
struct intel_ir_data {struct msi_msg msi_entry; } ;



__attribute__((used)) static void intel_ir_compose_msi_msg(struct irq_data *irq_data,
         struct msi_msg *msg)
{
 struct intel_ir_data *ir_data = irq_data->chip_data;

 *msg = ir_data->msi_entry;
}
