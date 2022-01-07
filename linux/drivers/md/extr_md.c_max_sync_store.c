
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {unsigned long long resync_max; unsigned long long resync_min; scalar_t__ ro; int chunk_sectors; int lock; int recovery_wait; int recovery; } ;
typedef size_t ssize_t ;
typedef unsigned long long sector_t ;


 int EBUSY ;
 int EINVAL ;
 int MD_RECOVERY_RUNNING ;
 unsigned long long MaxSector ;
 scalar_t__ kstrtoull (char const*,int,unsigned long long*) ;
 scalar_t__ sector_div (unsigned long long,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static ssize_t
max_sync_store(struct mddev *mddev, const char *buf, size_t len)
{
 int err;
 spin_lock(&mddev->lock);
 if (strncmp(buf, "max", 3) == 0)
  mddev->resync_max = MaxSector;
 else {
  unsigned long long max;
  int chunk;

  err = -EINVAL;
  if (kstrtoull(buf, 10, &max))
   goto out_unlock;
  if (max < mddev->resync_min)
   goto out_unlock;

  err = -EBUSY;
  if (max < mddev->resync_max &&
      mddev->ro == 0 &&
      test_bit(MD_RECOVERY_RUNNING, &mddev->recovery))
   goto out_unlock;


  chunk = mddev->chunk_sectors;
  if (chunk) {
   sector_t temp = max;

   err = -EINVAL;
   if (sector_div(temp, chunk))
    goto out_unlock;
  }
  mddev->resync_max = max;
 }
 wake_up(&mddev->recovery_wait);
 err = 0;
out_unlock:
 spin_unlock(&mddev->lock);
 return err ?: len;
}
