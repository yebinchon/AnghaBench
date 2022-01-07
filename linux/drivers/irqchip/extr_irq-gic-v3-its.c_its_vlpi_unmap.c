
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int vlpi_lock; int vlpi_maps; int * vm; int nr_vlpis; } ;
struct its_device {TYPE_1__ event_map; int its; } ;
struct irq_data {int hwirq; } ;


 int EINVAL ;
 int LPI_PROP_DEFAULT_PRIO ;
 int LPI_PROP_ENABLED ;
 int LPI_PROP_GROUP1 ;
 struct its_device* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_clr_forwarded_to_vcpu (struct irq_data*) ;
 int irqd_is_forwarded_to_vcpu (struct irq_data*) ;
 int its_get_event_id (struct irq_data*) ;
 int its_send_discard (struct its_device*,int ) ;
 int its_send_mapti (struct its_device*,int ,int ) ;
 int its_unmap_vm (int ,int *) ;
 int kfree (int ) ;
 int lpi_update_config (struct irq_data*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int its_vlpi_unmap(struct irq_data *d)
{
 struct its_device *its_dev = irq_data_get_irq_chip_data(d);
 u32 event = its_get_event_id(d);
 int ret = 0;

 mutex_lock(&its_dev->event_map.vlpi_lock);

 if (!its_dev->event_map.vm || !irqd_is_forwarded_to_vcpu(d)) {
  ret = -EINVAL;
  goto out;
 }


 its_send_discard(its_dev, event);


 irqd_clr_forwarded_to_vcpu(d);
 its_send_mapti(its_dev, d->hwirq, event);
 lpi_update_config(d, 0xff, (LPI_PROP_DEFAULT_PRIO |
        LPI_PROP_ENABLED |
        LPI_PROP_GROUP1));


 its_unmap_vm(its_dev->its, its_dev->event_map.vm);





 if (!--its_dev->event_map.nr_vlpis) {
  its_dev->event_map.vm = ((void*)0);
  kfree(its_dev->event_map.vlpi_maps);
 }

out:
 mutex_unlock(&its_dev->event_map.vlpi_lock);
 return ret;
}
