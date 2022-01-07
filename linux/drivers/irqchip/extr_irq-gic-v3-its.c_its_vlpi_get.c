
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {int vlpi_lock; TYPE_1__* vlpi_maps; int vm; } ;
struct its_device {TYPE_2__ event_map; } ;
struct its_cmd_info {TYPE_1__* map; } ;
struct irq_data {int dummy; } ;
struct TYPE_3__ {int vm; } ;


 int EINVAL ;
 struct its_device* irq_data_get_irq_chip_data (struct irq_data*) ;
 size_t its_get_event_id (struct irq_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int its_vlpi_get(struct irq_data *d, struct its_cmd_info *info)
{
 struct its_device *its_dev = irq_data_get_irq_chip_data(d);
 u32 event = its_get_event_id(d);
 int ret = 0;

 mutex_lock(&its_dev->event_map.vlpi_lock);

 if (!its_dev->event_map.vm ||
     !its_dev->event_map.vlpi_maps[event].vm) {
  ret = -EINVAL;
  goto out;
 }


 *info->map = its_dev->event_map.vlpi_maps[event];

out:
 mutex_unlock(&its_dev->event_map.vlpi_lock);
 return ret;
}
