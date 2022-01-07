
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct its_vpe {int dummy; } ;
struct its_cmd_info {int cmd_type; } ;
struct irq_data {int dummy; } ;



 int EINVAL ;


 struct its_vpe* irq_data_get_irq_chip_data (struct irq_data*) ;
 int its_vpe_deschedule (struct its_vpe*) ;
 int its_vpe_invall (struct its_vpe*) ;
 int its_vpe_schedule (struct its_vpe*) ;

__attribute__((used)) static int its_vpe_set_vcpu_affinity(struct irq_data *d, void *vcpu_info)
{
 struct its_vpe *vpe = irq_data_get_irq_chip_data(d);
 struct its_cmd_info *info = vcpu_info;

 switch (info->cmd_type) {
 case 128:
  its_vpe_schedule(vpe);
  return 0;

 case 130:
  its_vpe_deschedule(vpe);
  return 0;

 case 129:
  its_vpe_invall(vpe);
  return 0;

 default:
  return -EINVAL;
 }
}
