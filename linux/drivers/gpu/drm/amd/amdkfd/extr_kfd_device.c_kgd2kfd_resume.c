
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_dev {int init_complete; } ;


 int WARN_ONCE (int,char*) ;
 int atomic_dec_return (int *) ;
 int kfd_locked ;
 int kfd_resume (struct kfd_dev*) ;
 int kfd_resume_all_processes () ;

int kgd2kfd_resume(struct kfd_dev *kfd)
{
 int ret, count;

 if (!kfd->init_complete)
  return 0;

 ret = kfd_resume(kfd);
 if (ret)
  return ret;

 count = atomic_dec_return(&kfd_locked);
 WARN_ONCE(count < 0, "KFD suspend / resume ref. error");
 if (count == 0)
  ret = kfd_resume_all_processes();

 return ret;
}
