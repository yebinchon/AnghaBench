
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_queue_manager {TYPE_2__* dev; } ;
struct TYPE_3__ {int queue_bitmap; } ;
struct TYPE_4__ {TYPE_1__ shared_resources; } ;


 int KGD_MAX_QUEUES ;
 unsigned int bitmap_weight (int ,int ) ;

unsigned int get_queues_num(struct device_queue_manager *dqm)
{
 return bitmap_weight(dqm->dev->shared_resources.queue_bitmap,
    KGD_MAX_QUEUES);
}
