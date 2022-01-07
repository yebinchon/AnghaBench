
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_dev {int kgd; int compute_profile; } ;


 int WARN_ONCE (int,char*) ;
 int amdgpu_amdkfd_set_compute_idle (int ,int) ;
 int atomic_dec_return (int *) ;

void kfd_dec_compute_active(struct kfd_dev *kfd)
{
 int count = atomic_dec_return(&kfd->compute_profile);

 if (count == 0)
  amdgpu_amdkfd_set_compute_idle(kfd->kgd, 1);
 WARN_ONCE(count < 0, "Compute profile ref. count error");
}
