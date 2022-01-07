
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {unsigned long long resync_max; int lock; int resync_min; int recovery; } ;
typedef size_t ssize_t ;


 int EBUSY ;
 size_t EINVAL ;
 int MD_RECOVERY_RUNNING ;
 scalar_t__ kstrtoull (char const*,int,unsigned long long*) ;
 int round_down (unsigned long long,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static ssize_t
min_sync_store(struct mddev *mddev, const char *buf, size_t len)
{
 unsigned long long min;
 int err;

 if (kstrtoull(buf, 10, &min))
  return -EINVAL;

 spin_lock(&mddev->lock);
 err = -EINVAL;
 if (min > mddev->resync_max)
  goto out_unlock;

 err = -EBUSY;
 if (test_bit(MD_RECOVERY_RUNNING, &mddev->recovery))
  goto out_unlock;


 mddev->resync_min = round_down(min, 8);
 err = 0;

out_unlock:
 spin_unlock(&mddev->lock);
 return err ?: len;
}
