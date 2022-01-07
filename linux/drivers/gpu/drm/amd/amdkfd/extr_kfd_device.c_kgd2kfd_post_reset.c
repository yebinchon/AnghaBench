
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_dev {int sram_ecc_flag; int dqm; int init_complete; } ;


 int atomic_dec_return (int *) ;
 int atomic_set (int *,int ) ;
 int dqm_unlock (int ) ;
 int kfd_locked ;
 int kfd_resume (struct kfd_dev*) ;

int kgd2kfd_post_reset(struct kfd_dev *kfd)
{
 int ret, count;

 if (!kfd->init_complete)
  return 0;

 dqm_unlock(kfd->dqm);

 ret = kfd_resume(kfd);
 if (ret)
  return ret;
 count = atomic_dec_return(&kfd_locked);

 atomic_set(&kfd->sram_ecc_flag, 0);

 return 0;
}
