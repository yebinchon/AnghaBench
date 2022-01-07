
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpconf {int raid_disks; TYPE_1__* multipaths; } ;
struct md_rdev {int nr_pending; int flags; } ;
struct TYPE_2__ {int rdev; } ;


 int Faulty ;
 int In_sync ;
 int atomic_inc (int *) ;
 int pr_crit_ratelimited (char*) ;
 struct md_rdev* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int multipath_map (struct mpconf *conf)
{
 int i, disks = conf->raid_disks;






 rcu_read_lock();
 for (i = 0; i < disks; i++) {
  struct md_rdev *rdev = rcu_dereference(conf->multipaths[i].rdev);
  if (rdev && test_bit(In_sync, &rdev->flags) &&
      !test_bit(Faulty, &rdev->flags)) {
   atomic_inc(&rdev->nr_pending);
   rcu_read_unlock();
   return i;
  }
 }
 rcu_read_unlock();

 pr_crit_ratelimited("multipath_map(): no more operational IO paths?\n");
 return (-1);
}
