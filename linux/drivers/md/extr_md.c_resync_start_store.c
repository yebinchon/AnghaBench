
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {unsigned long long recovery_cp; int sb_flags; scalar_t__ pers; int recovery; } ;
typedef int ssize_t ;
typedef unsigned long long sector_t ;


 int EBUSY ;
 int EINVAL ;
 int MD_RECOVERY_FROZEN ;
 int MD_SB_CHANGE_CLEAN ;
 unsigned long long MaxSector ;
 scalar_t__ cmd_match (char const*,char*) ;
 int kstrtoull (char const*,int,unsigned long long*) ;
 int mddev_lock (struct mddev*) ;
 int mddev_unlock (struct mddev*) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static ssize_t
resync_start_store(struct mddev *mddev, const char *buf, size_t len)
{
 unsigned long long n;
 int err;

 if (cmd_match(buf, "none"))
  n = MaxSector;
 else {
  err = kstrtoull(buf, 10, &n);
  if (err < 0)
   return err;
  if (n != (sector_t)n)
   return -EINVAL;
 }

 err = mddev_lock(mddev);
 if (err)
  return err;
 if (mddev->pers && !test_bit(MD_RECOVERY_FROZEN, &mddev->recovery))
  err = -EBUSY;

 if (!err) {
  mddev->recovery_cp = n;
  if (mddev->pers)
   set_bit(MD_SB_CHANGE_CLEAN, &mddev->sb_flags);
 }
 mddev_unlock(mddev);
 return err ?: len;
}
