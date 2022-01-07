
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multipath_info {struct md_rdev* rdev; } ;
struct mpconf {struct multipath_info* multipaths; } ;
struct mddev {struct mpconf* private; } ;
struct md_rdev {int raid_disk; int nr_pending; int flags; } ;


 int EBUSY ;
 int In_sync ;
 int RemoveSynchronized ;
 scalar_t__ atomic_read (int *) ;
 int md_integrity_register (struct mddev*) ;
 int pr_warn (char*,int) ;
 int print_multipath_conf (struct mpconf*) ;
 int synchronize_rcu () ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int multipath_remove_disk(struct mddev *mddev, struct md_rdev *rdev)
{
 struct mpconf *conf = mddev->private;
 int err = 0;
 int number = rdev->raid_disk;
 struct multipath_info *p = conf->multipaths + number;

 print_multipath_conf(conf);

 if (rdev == p->rdev) {
  if (test_bit(In_sync, &rdev->flags) ||
      atomic_read(&rdev->nr_pending)) {
   pr_warn("hot-remove-disk, slot %d is identified but is still operational!\n", number);
   err = -EBUSY;
   goto abort;
  }
  p->rdev = ((void*)0);
  if (!test_bit(RemoveSynchronized, &rdev->flags)) {
   synchronize_rcu();
   if (atomic_read(&rdev->nr_pending)) {

    err = -EBUSY;
    p->rdev = rdev;
    goto abort;
   }
  }
  err = md_integrity_register(mddev);
 }
abort:

 print_multipath_conf(conf);
 return err;
}
