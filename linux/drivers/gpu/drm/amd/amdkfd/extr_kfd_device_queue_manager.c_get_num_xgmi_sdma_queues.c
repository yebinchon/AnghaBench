
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_queue_manager {TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* device_info; } ;
struct TYPE_3__ {unsigned int num_xgmi_sdma_engines; unsigned int num_sdma_queues_per_engine; } ;



unsigned int get_num_xgmi_sdma_queues(struct device_queue_manager *dqm)
{
 return dqm->dev->device_info->num_xgmi_sdma_engines
   * dqm->dev->device_info->num_sdma_queues_per_engine;
}
