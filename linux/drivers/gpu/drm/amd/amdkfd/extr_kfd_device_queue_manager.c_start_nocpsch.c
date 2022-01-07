
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_queue_manager {int packets; } ;


 int init_interrupts (struct device_queue_manager*) ;
 int pm_init (int *,struct device_queue_manager*) ;

__attribute__((used)) static int start_nocpsch(struct device_queue_manager *dqm)
{
 init_interrupts(dqm);
 return pm_init(&dqm->packets, dqm);
}
