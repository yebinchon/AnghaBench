
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* uninitialize ) (struct device_queue_manager*) ;} ;
struct device_queue_manager {int hiq_sdma_mqd; int dev; TYPE_1__ ops; } ;


 int deallocate_hiq_sdma_mqd (int ,int *) ;
 int kfree (struct device_queue_manager*) ;
 int stub1 (struct device_queue_manager*) ;

void device_queue_manager_uninit(struct device_queue_manager *dqm)
{
 dqm->ops.uninitialize(dqm);
 deallocate_hiq_sdma_mqd(dqm->dev, &dqm->hiq_sdma_mqd);
 kfree(dqm);
}
