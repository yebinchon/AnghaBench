
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_queue_manager {int packets; } ;


 int pm_uninit (int *) ;

__attribute__((used)) static int stop_nocpsch(struct device_queue_manager *dqm)
{
 pm_uninit(&dqm->packets);
 return 0;
}
