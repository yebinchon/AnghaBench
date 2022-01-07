
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vm; } ;
struct its_device {TYPE_1__ event_map; } ;
struct its_cmd_info {scalar_t__ cmd_type; int config; } ;
struct irq_data {int dummy; } ;


 int EINVAL ;
 int LPI_PROP_ENABLED ;
 scalar_t__ PROP_UPDATE_AND_INV_VLPI ;
 struct its_device* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_is_forwarded_to_vcpu (struct irq_data*) ;
 int its_vlpi_set_doorbell (struct irq_data*,int) ;
 int lpi_update_config (struct irq_data*,int,int) ;
 int lpi_write_config (struct irq_data*,int,int) ;

__attribute__((used)) static int its_vlpi_prop_update(struct irq_data *d, struct its_cmd_info *info)
{
 struct its_device *its_dev = irq_data_get_irq_chip_data(d);

 if (!its_dev->event_map.vm || !irqd_is_forwarded_to_vcpu(d))
  return -EINVAL;

 if (info->cmd_type == PROP_UPDATE_AND_INV_VLPI)
  lpi_update_config(d, 0xff, info->config);
 else
  lpi_write_config(d, 0xff, info->config);
 its_vlpi_set_doorbell(d, !!(info->config & LPI_PROP_ENABLED));

 return 0;
}
