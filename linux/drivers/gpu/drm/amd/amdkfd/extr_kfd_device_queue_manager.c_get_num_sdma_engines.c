
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_queue_manager {TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* device_info; } ;
struct TYPE_3__ {unsigned int num_sdma_engines; } ;



__attribute__((used)) static unsigned int get_num_sdma_engines(struct device_queue_manager *dqm)
{
 return dqm->dev->device_info->num_sdma_engines;
}
