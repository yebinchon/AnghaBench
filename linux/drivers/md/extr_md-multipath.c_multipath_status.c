
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct mpconf {int raid_disks; TYPE_1__* multipaths; } ;
struct mddev {scalar_t__ degraded; struct mpconf* private; } ;
struct md_rdev {int flags; } ;
struct TYPE_2__ {int rdev; } ;


 int In_sync ;
 struct md_rdev* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int seq_printf (struct seq_file*,char*,...) ;
 int seq_putc (struct seq_file*,char) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void multipath_status(struct seq_file *seq, struct mddev *mddev)
{
 struct mpconf *conf = mddev->private;
 int i;

 seq_printf (seq, " [%d/%d] [", conf->raid_disks,
      conf->raid_disks - mddev->degraded);
 rcu_read_lock();
 for (i = 0; i < conf->raid_disks; i++) {
  struct md_rdev *rdev = rcu_dereference(conf->multipaths[i].rdev);
  seq_printf (seq, "%s", rdev && test_bit(In_sync, &rdev->flags) ? "U" : "_");
 }
 rcu_read_unlock();
 seq_putc(seq, ']');
}
