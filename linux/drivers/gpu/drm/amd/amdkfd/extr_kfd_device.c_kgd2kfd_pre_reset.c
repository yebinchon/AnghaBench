
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_dev {int dqm; int init_complete; } ;


 int dqm_lock (int ) ;
 int kfd_signal_reset_event (struct kfd_dev*) ;
 int kgd2kfd_suspend (struct kfd_dev*) ;

int kgd2kfd_pre_reset(struct kfd_dev *kfd)
{
 if (!kfd->init_complete)
  return 0;
 kgd2kfd_suspend(kfd);


 dqm_lock(kfd->dqm);

 kfd_signal_reset_event(kfd);
 return 0;
}
