
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum ams_irq { ____Placeholder_ams_irq } ams_irq ;
struct TYPE_2__ {int worker_irqs; int irq_lock; int worker; } ;


 TYPE_1__ ams_info ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ams_handle_irq(void *data)
{
 enum ams_irq irq = *((enum ams_irq *)data);

 spin_lock(&ams_info.irq_lock);

 ams_info.worker_irqs |= irq;
 schedule_work(&ams_info.worker);

 spin_unlock(&ams_info.irq_lock);
}
