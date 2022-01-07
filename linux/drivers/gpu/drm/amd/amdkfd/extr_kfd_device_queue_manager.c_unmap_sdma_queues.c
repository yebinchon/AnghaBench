
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_queue_manager {int packets; TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* device_info; } ;
struct TYPE_3__ {int num_sdma_engines; int num_xgmi_sdma_engines; } ;


 int KFD_QUEUE_TYPE_SDMA ;
 int KFD_UNMAP_QUEUES_FILTER_DYNAMIC_QUEUES ;
 int pm_send_unmap_queue (int *,int ,int ,int ,int,int) ;

__attribute__((used)) static int unmap_sdma_queues(struct device_queue_manager *dqm)
{
 int i, retval = 0;

 for (i = 0; i < dqm->dev->device_info->num_sdma_engines +
  dqm->dev->device_info->num_xgmi_sdma_engines; i++) {
  retval = pm_send_unmap_queue(&dqm->packets, KFD_QUEUE_TYPE_SDMA,
   KFD_UNMAP_QUEUES_FILTER_DYNAMIC_QUEUES, 0, 0, i);
  if (retval)
   return retval;
 }
 return retval;
}
