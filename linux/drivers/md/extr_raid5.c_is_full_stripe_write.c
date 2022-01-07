
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_head {scalar_t__ overwrite_disks; scalar_t__ disks; TYPE_1__* raid_conf; } ;
struct TYPE_2__ {scalar_t__ max_degraded; } ;


 int BUG_ON (int) ;

__attribute__((used)) static bool is_full_stripe_write(struct stripe_head *sh)
{
 BUG_ON(sh->overwrite_disks > (sh->disks - sh->raid_conf->max_degraded));
 return sh->overwrite_disks == (sh->disks - sh->raid_conf->max_degraded);
}
