
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct its_vlpi_map {scalar_t__ vm; int properties; } ;
struct TYPE_2__ {scalar_t__ vm; int vlpi_lock; int nr_vlpis; struct its_vlpi_map* vlpi_maps; int nr_lpis; } ;
struct its_device {TYPE_1__ event_map; int its; } ;
struct its_cmd_info {struct its_vlpi_map* map; } ;
struct irq_data {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct its_device* irq_data_get_irq_chip_data (struct irq_data*) ;
 scalar_t__ irqd_is_forwarded_to_vcpu (struct irq_data*) ;
 int irqd_set_forwarded_to_vcpu (struct irq_data*) ;
 size_t its_get_event_id (struct irq_data*) ;
 int its_map_vm (int ,scalar_t__) ;
 int its_send_discard (struct its_device*,size_t) ;
 int its_send_vmapti (struct its_device*,size_t) ;
 int its_send_vmovi (struct its_device*,size_t) ;
 struct its_vlpi_map* kcalloc (int ,int,int ) ;
 int lpi_write_config (struct irq_data*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int its_vlpi_map(struct irq_data *d, struct its_cmd_info *info)
{
 struct its_device *its_dev = irq_data_get_irq_chip_data(d);
 u32 event = its_get_event_id(d);
 int ret = 0;

 if (!info->map)
  return -EINVAL;

 mutex_lock(&its_dev->event_map.vlpi_lock);

 if (!its_dev->event_map.vm) {
  struct its_vlpi_map *maps;

  maps = kcalloc(its_dev->event_map.nr_lpis, sizeof(*maps),
          GFP_KERNEL);
  if (!maps) {
   ret = -ENOMEM;
   goto out;
  }

  its_dev->event_map.vm = info->map->vm;
  its_dev->event_map.vlpi_maps = maps;
 } else if (its_dev->event_map.vm != info->map->vm) {
  ret = -EINVAL;
  goto out;
 }


 its_dev->event_map.vlpi_maps[event] = *info->map;

 if (irqd_is_forwarded_to_vcpu(d)) {

  its_send_vmovi(its_dev, event);
 } else {

  its_map_vm(its_dev->its, info->map->vm);





  irqd_set_forwarded_to_vcpu(d);


  lpi_write_config(d, 0xff, info->map->properties);


  its_send_discard(its_dev, event);


  its_send_vmapti(its_dev, event);


  its_dev->event_map.nr_vlpis++;
 }

out:
 mutex_unlock(&its_dev->event_map.vlpi_lock);
 return ret;
}
