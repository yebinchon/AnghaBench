
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {unsigned long long suspend_hi; int * pers; } ;
typedef int ssize_t ;
typedef unsigned long long sector_t ;


 int EINVAL ;
 int kstrtoull (char const*,int,unsigned long long*) ;
 int mddev_lock (struct mddev*) ;
 int mddev_resume (struct mddev*) ;
 int mddev_suspend (struct mddev*) ;
 int mddev_unlock (struct mddev*) ;

__attribute__((used)) static ssize_t
suspend_hi_store(struct mddev *mddev, const char *buf, size_t len)
{
 unsigned long long new;
 int err;

 err = kstrtoull(buf, 10, &new);
 if (err < 0)
  return err;
 if (new != (sector_t)new)
  return -EINVAL;

 err = mddev_lock(mddev);
 if (err)
  return err;
 err = -EINVAL;
 if (mddev->pers == ((void*)0))
  goto unlock;

 mddev_suspend(mddev);
 mddev->suspend_hi = new;
 mddev_resume(mddev);

 err = 0;
unlock:
 mddev_unlock(mddev);
 return err ?: len;
}
