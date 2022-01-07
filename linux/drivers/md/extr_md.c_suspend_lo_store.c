
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {unsigned long long suspend_lo; TYPE_1__* pers; } ;
typedef int ssize_t ;
typedef unsigned long long sector_t ;
struct TYPE_2__ {int * quiesce; } ;


 int EINVAL ;
 int kstrtoull (char const*,int,unsigned long long*) ;
 int mddev_lock (struct mddev*) ;
 int mddev_resume (struct mddev*) ;
 int mddev_suspend (struct mddev*) ;
 int mddev_unlock (struct mddev*) ;

__attribute__((used)) static ssize_t
suspend_lo_store(struct mddev *mddev, const char *buf, size_t len)
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
 if (mddev->pers == ((void*)0) ||
     mddev->pers->quiesce == ((void*)0))
  goto unlock;
 mddev_suspend(mddev);
 mddev->suspend_lo = new;
 mddev_resume(mddev);

 err = 0;
unlock:
 mddev_unlock(mddev);
 return err ?: len;
}
