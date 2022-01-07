
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9_mqd {int dummy; } ;
struct queue_properties {scalar_t__ type; int ctl_stack_size; } ;
struct kfd_mem_obj {int cpu_ptr; int gpu_addr; int gtt_mem; } ;
struct kfd_dev {int kgd; scalar_t__ cwsr_enabled; } ;


 scalar_t__ ALIGN (int,int ) ;
 int GFP_NOIO ;
 scalar_t__ KFD_QUEUE_TYPE_COMPUTE ;
 int PAGE_SIZE ;
 int amdgpu_amdkfd_alloc_gtt_mem (int ,scalar_t__,int *,int *,void*,int) ;
 int kfd_gtt_sa_allocate (struct kfd_dev*,int,struct kfd_mem_obj**) ;
 int kfree (struct kfd_mem_obj*) ;
 struct kfd_mem_obj* kzalloc (int,int ) ;

__attribute__((used)) static struct kfd_mem_obj *allocate_mqd(struct kfd_dev *kfd,
  struct queue_properties *q)
{
 int retval;
 struct kfd_mem_obj *mqd_mem_obj = ((void*)0);





 if (kfd->cwsr_enabled && (q->type == KFD_QUEUE_TYPE_COMPUTE)) {
  mqd_mem_obj = kzalloc(sizeof(struct kfd_mem_obj), GFP_NOIO);
  if (!mqd_mem_obj)
   return ((void*)0);
  retval = amdgpu_amdkfd_alloc_gtt_mem(kfd->kgd,
   ALIGN(q->ctl_stack_size, PAGE_SIZE) +
    ALIGN(sizeof(struct v9_mqd), PAGE_SIZE),
   &(mqd_mem_obj->gtt_mem),
   &(mqd_mem_obj->gpu_addr),
   (void *)&(mqd_mem_obj->cpu_ptr), 1);
 } else {
  retval = kfd_gtt_sa_allocate(kfd, sizeof(struct v9_mqd),
    &mqd_mem_obj);
 }

 if (retval) {
  kfree(mqd_mem_obj);
  return ((void*)0);
 }

 return mqd_mem_obj;

}
