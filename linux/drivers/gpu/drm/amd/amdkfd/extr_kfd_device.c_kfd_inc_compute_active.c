
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_dev {int kgd; int compute_profile; } ;


 int amdgpu_amdkfd_set_compute_idle (int ,int) ;
 int atomic_inc_return (int *) ;

void kfd_inc_compute_active(struct kfd_dev *kfd)
{
 if (atomic_inc_return(&kfd->compute_profile) == 1)
  amdgpu_amdkfd_set_compute_idle(kfd->kgd, 0);
}
