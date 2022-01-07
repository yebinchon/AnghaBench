
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct its_device {TYPE_1__* its; } ;
struct its_cmd_info {int cmd_type; } ;
struct irq_data {int dummy; } ;
struct TYPE_2__ {int is_v4; } ;


 int EINVAL ;




 struct its_device* irq_data_get_irq_chip_data (struct irq_data*) ;
 int its_vlpi_get (struct irq_data*,struct its_cmd_info*) ;
 int its_vlpi_map (struct irq_data*,struct its_cmd_info*) ;
 int its_vlpi_prop_update (struct irq_data*,struct its_cmd_info*) ;
 int its_vlpi_unmap (struct irq_data*) ;

__attribute__((used)) static int its_irq_set_vcpu_affinity(struct irq_data *d, void *vcpu_info)
{
 struct its_device *its_dev = irq_data_get_irq_chip_data(d);
 struct its_cmd_info *info = vcpu_info;


 if (!its_dev->its->is_v4)
  return -EINVAL;


 if (!info)
  return its_vlpi_unmap(d);

 switch (info->cmd_type) {
 case 130:
  return its_vlpi_map(d, info);

 case 131:
  return its_vlpi_get(d, info);

 case 128:
 case 129:
  return its_vlpi_prop_update(d, info);

 default:
  return -EINVAL;
 }
}
