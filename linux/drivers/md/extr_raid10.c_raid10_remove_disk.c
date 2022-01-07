
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct raid10_info {scalar_t__ recovery_disabled; struct md_rdev* replacement; struct md_rdev* rdev; } ;
struct TYPE_2__ {int raid_disks; } ;
struct r10conf {TYPE_1__ geo; struct raid10_info* mirrors; } ;
struct mddev {scalar_t__ recovery_disabled; struct r10conf* private; } ;
struct md_rdev {int raid_disk; int flags; int nr_pending; } ;


 int EBUSY ;
 int Faulty ;
 int In_sync ;
 int RemoveSynchronized ;
 int Replacement ;
 int WantReplacement ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 scalar_t__ enough (struct r10conf*,int) ;
 int md_integrity_register (struct mddev*) ;
 int print_conf (struct r10conf*) ;
 int smp_mb () ;
 int synchronize_rcu () ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int raid10_remove_disk(struct mddev *mddev, struct md_rdev *rdev)
{
 struct r10conf *conf = mddev->private;
 int err = 0;
 int number = rdev->raid_disk;
 struct md_rdev **rdevp;
 struct raid10_info *p = conf->mirrors + number;

 print_conf(conf);
 if (rdev == p->rdev)
  rdevp = &p->rdev;
 else if (rdev == p->replacement)
  rdevp = &p->replacement;
 else
  return 0;

 if (test_bit(In_sync, &rdev->flags) ||
     atomic_read(&rdev->nr_pending)) {
  err = -EBUSY;
  goto abort;
 }



 if (!test_bit(Faulty, &rdev->flags) &&
     mddev->recovery_disabled != p->recovery_disabled &&
     (!p->replacement || p->replacement == rdev) &&
     number < conf->geo.raid_disks &&
     enough(conf, -1)) {
  err = -EBUSY;
  goto abort;
 }
 *rdevp = ((void*)0);
 if (!test_bit(RemoveSynchronized, &rdev->flags)) {
  synchronize_rcu();
  if (atomic_read(&rdev->nr_pending)) {

   err = -EBUSY;
   *rdevp = rdev;
   goto abort;
  }
 }
 if (p->replacement) {

  p->rdev = p->replacement;
  clear_bit(Replacement, &p->replacement->flags);
  smp_mb();


  p->replacement = ((void*)0);
 }

 clear_bit(WantReplacement, &rdev->flags);
 err = md_integrity_register(mddev);

abort:

 print_conf(conf);
 return err;
}
