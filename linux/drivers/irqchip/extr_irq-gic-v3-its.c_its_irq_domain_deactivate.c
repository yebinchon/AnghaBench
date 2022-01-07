
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct its_device {int dummy; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int dummy; } ;


 struct its_device* irq_data_get_irq_chip_data (struct irq_data*) ;
 int its_get_event_id (struct irq_data*) ;
 int its_send_discard (struct its_device*,int ) ;

__attribute__((used)) static void its_irq_domain_deactivate(struct irq_domain *domain,
          struct irq_data *d)
{
 struct its_device *its_dev = irq_data_get_irq_chip_data(d);
 u32 event = its_get_event_id(d);


 its_send_discard(its_dev, event);
}
