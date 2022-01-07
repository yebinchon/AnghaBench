
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_dev {int gws; int kgd; int gtt_mem; int dqm; scalar_t__ init_complete; } ;


 int amdgpu_amdkfd_free_gtt_mem (int ,int ) ;
 int amdgpu_amdkfd_free_gws (int ,int ) ;
 int device_queue_manager_uninit (int ) ;
 scalar_t__ hws_gws_support ;
 int kfd_doorbell_fini (struct kfd_dev*) ;
 int kfd_gtt_sa_fini (struct kfd_dev*) ;
 int kfd_interrupt_exit (struct kfd_dev*) ;
 int kfd_topology_remove_device (struct kfd_dev*) ;
 int kfree (struct kfd_dev*) ;
 int kgd2kfd_suspend (struct kfd_dev*) ;

void kgd2kfd_device_exit(struct kfd_dev *kfd)
{
 if (kfd->init_complete) {
  kgd2kfd_suspend(kfd);
  device_queue_manager_uninit(kfd->dqm);
  kfd_interrupt_exit(kfd);
  kfd_topology_remove_device(kfd);
  kfd_doorbell_fini(kfd);
  kfd_gtt_sa_fini(kfd);
  amdgpu_amdkfd_free_gtt_mem(kfd->kgd, kfd->gtt_mem);
  if (hws_gws_support)
   amdgpu_amdkfd_free_gws(kfd->kgd, kfd->gws);
 }

 kfree(kfd);
}
