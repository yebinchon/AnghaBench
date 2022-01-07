
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct queue_properties {int dummy; } ;
struct kfd_mem_obj {int cpu_ptr; int gpu_addr; int gtt_mem; } ;
struct kfd_dev {TYPE_2__* dqm; } ;
struct TYPE_3__ {int cpu_ptr; int gpu_addr; int gtt_mem; } ;
struct TYPE_4__ {TYPE_1__ hiq_sdma_mqd; } ;


 int GFP_KERNEL ;
 struct kfd_mem_obj* kzalloc (int,int ) ;

struct kfd_mem_obj *allocate_hiq_mqd(struct kfd_dev *dev, struct queue_properties *q)
{
 struct kfd_mem_obj *mqd_mem_obj = ((void*)0);

 mqd_mem_obj = kzalloc(sizeof(struct kfd_mem_obj), GFP_KERNEL);
 if (!mqd_mem_obj)
  return ((void*)0);

 mqd_mem_obj->gtt_mem = dev->dqm->hiq_sdma_mqd.gtt_mem;
 mqd_mem_obj->gpu_addr = dev->dqm->hiq_sdma_mqd.gpu_addr;
 mqd_mem_obj->cpu_ptr = dev->dqm->hiq_sdma_mqd.cpu_ptr;

 return mqd_mem_obj;
}
