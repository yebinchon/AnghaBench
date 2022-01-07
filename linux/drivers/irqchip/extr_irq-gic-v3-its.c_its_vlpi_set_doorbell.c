
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {TYPE_1__* vlpi_maps; } ;
struct its_device {TYPE_2__ event_map; } ;
struct irq_data {int dummy; } ;
struct TYPE_3__ {int db_enabled; } ;


 struct its_device* irq_data_get_irq_chip_data (struct irq_data*) ;
 size_t its_get_event_id (struct irq_data*) ;
 int its_send_vmovi (struct its_device*,size_t) ;

__attribute__((used)) static void its_vlpi_set_doorbell(struct irq_data *d, bool enable)
{
 struct its_device *its_dev = irq_data_get_irq_chip_data(d);
 u32 event = its_get_event_id(d);

 if (its_dev->event_map.vlpi_maps[event].db_enabled == enable)
  return;

 its_dev->event_map.vlpi_maps[event].db_enabled = enable;
 its_send_vmovi(its_dev, event);
}
