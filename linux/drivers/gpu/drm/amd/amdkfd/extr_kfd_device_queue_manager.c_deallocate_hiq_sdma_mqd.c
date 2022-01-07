
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_mem_obj {int gtt_mem; } ;
struct kfd_dev {int kgd; } ;


 int WARN (int,char*) ;
 int amdgpu_amdkfd_free_gtt_mem (int ,int ) ;

__attribute__((used)) static void deallocate_hiq_sdma_mqd(struct kfd_dev *dev,
        struct kfd_mem_obj *mqd)
{
 WARN(!mqd, "No hiq sdma mqd trunk to free");

 amdgpu_amdkfd_free_gtt_mem(dev->kgd, mqd->gtt_mem);
}
