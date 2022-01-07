
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct kfd_mem_obj {int cpu_ptr; int gpu_addr; int gtt_mem; } ;
struct kfd_dev {int kgd; TYPE_1__* device_info; } ;
struct device_queue_manager {TYPE_2__** mqd_mgrs; struct kfd_mem_obj hiq_sdma_mqd; struct kfd_dev* dev; } ;
struct TYPE_4__ {int mqd_size; } ;
struct TYPE_3__ {int num_sdma_engines; int num_sdma_queues_per_engine; } ;


 size_t KFD_MQD_TYPE_HIQ ;
 size_t KFD_MQD_TYPE_SDMA ;
 int amdgpu_amdkfd_alloc_gtt_mem (int ,int,int *,int *,void*,int) ;

__attribute__((used)) static int allocate_hiq_sdma_mqd(struct device_queue_manager *dqm)
{
 int retval;
 struct kfd_dev *dev = dqm->dev;
 struct kfd_mem_obj *mem_obj = &dqm->hiq_sdma_mqd;
 uint32_t size = dqm->mqd_mgrs[KFD_MQD_TYPE_SDMA]->mqd_size *
  dev->device_info->num_sdma_engines *
  dev->device_info->num_sdma_queues_per_engine +
  dqm->mqd_mgrs[KFD_MQD_TYPE_HIQ]->mqd_size;

 retval = amdgpu_amdkfd_alloc_gtt_mem(dev->kgd, size,
  &(mem_obj->gtt_mem), &(mem_obj->gpu_addr),
  (void *)&(mem_obj->cpu_ptr), 1);

 return retval;
}
