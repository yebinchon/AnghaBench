
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct its_vlpi_map {int vintid; int properties; } ;
struct TYPE_5__ {struct its_vlpi_map* vlpi_maps; TYPE_1__* vm; } ;
struct its_device {TYPE_2__ event_map; } ;
struct irq_data {int hwirq; } ;
typedef int irq_hw_number_t ;
struct TYPE_6__ {int flags; void* prop_table_va; } ;
struct TYPE_4__ {int vprop_page; } ;


 int LPI_PROP_GROUP1 ;
 int RDIST_FLAGS_PROPBASE_NEEDS_FLUSHING ;
 int dsb (int ) ;
 int gic_flush_dcache_to_poc (int*,int) ;
 TYPE_3__* gic_rdists ;
 struct its_device* irq_data_get_irq_chip_data (struct irq_data*) ;
 scalar_t__ irqd_is_forwarded_to_vcpu (struct irq_data*) ;
 int ishst ;
 size_t its_get_event_id (struct irq_data*) ;
 void* page_address (int ) ;

__attribute__((used)) static void lpi_write_config(struct irq_data *d, u8 clr, u8 set)
{
 irq_hw_number_t hwirq;
 void *va;
 u8 *cfg;

 if (irqd_is_forwarded_to_vcpu(d)) {
  struct its_device *its_dev = irq_data_get_irq_chip_data(d);
  u32 event = its_get_event_id(d);
  struct its_vlpi_map *map;

  va = page_address(its_dev->event_map.vm->vprop_page);
  map = &its_dev->event_map.vlpi_maps[event];
  hwirq = map->vintid;


  map->properties &= ~clr;
  map->properties |= set | LPI_PROP_GROUP1;
 } else {
  va = gic_rdists->prop_table_va;
  hwirq = d->hwirq;
 }

 cfg = va + hwirq - 8192;
 *cfg &= ~clr;
 *cfg |= set | LPI_PROP_GROUP1;






 if (gic_rdists->flags & RDIST_FLAGS_PROPBASE_NEEDS_FLUSHING)
  gic_flush_dcache_to_poc(cfg, sizeof(*cfg));
 else
  dsb(ishst);
}
