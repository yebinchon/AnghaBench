
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct a6xx_hfi_queue {TYPE_1__* header; } ;
struct a6xx_gmu {int dev; struct a6xx_hfi_queue* queues; } ;
struct TYPE_2__ {scalar_t__ read_index; scalar_t__ write_index; } ;


 int ARRAY_SIZE (struct a6xx_hfi_queue*) ;
 int DRM_DEV_ERROR (int ,char*,int) ;

void a6xx_hfi_stop(struct a6xx_gmu *gmu)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(gmu->queues); i++) {
  struct a6xx_hfi_queue *queue = &gmu->queues[i];

  if (!queue->header)
   continue;

  if (queue->header->read_index != queue->header->write_index)
   DRM_DEV_ERROR(gmu->dev, "HFI queue %d is not empty\n", i);

  queue->header->read_index = 0;
  queue->header->write_index = 0;
 }
}
