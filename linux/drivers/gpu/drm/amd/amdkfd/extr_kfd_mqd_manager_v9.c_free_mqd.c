
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqd_manager {struct kfd_dev* dev; } ;
struct kfd_mem_obj {scalar_t__ gtt_mem; } ;
struct kfd_dev {int kgd; } ;


 int amdgpu_amdkfd_free_gtt_mem (int ,scalar_t__) ;
 int kfd_gtt_sa_free (struct kfd_dev*,struct kfd_mem_obj*) ;
 int kfree (struct kfd_mem_obj*) ;

__attribute__((used)) static void free_mqd(struct mqd_manager *mm, void *mqd,
   struct kfd_mem_obj *mqd_mem_obj)
{
 struct kfd_dev *kfd = mm->dev;

 if (mqd_mem_obj->gtt_mem) {
  amdgpu_amdkfd_free_gtt_mem(kfd->kgd, mqd_mem_obj->gtt_mem);
  kfree(mqd_mem_obj);
 } else {
  kfd_gtt_sa_free(mm->dev, mqd_mem_obj);
 }
}
