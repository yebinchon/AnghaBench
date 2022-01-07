
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct seq_file {struct nitrox_device* private; } ;
struct TYPE_2__ {int dropped; int completed; int posted; } ;
struct nitrox_device {TYPE_1__ stats; int idx; } ;


 scalar_t__ atomic64_read (int *) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int stats_show(struct seq_file *s, void *v)
{
 struct nitrox_device *ndev = s->private;

 seq_printf(s, "NITROX [%d] Request Statistics\n", ndev->idx);
 seq_printf(s, "  Posted: %llu\n",
     (u64)atomic64_read(&ndev->stats.posted));
 seq_printf(s, "  Completed: %llu\n",
     (u64)atomic64_read(&ndev->stats.completed));
 seq_printf(s, "  Dropped: %llu\n",
     (u64)atomic64_read(&ndev->stats.dropped));

 return 0;
}
