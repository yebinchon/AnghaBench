
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_head {int disks; TYPE_1__* dev; int log_start; scalar_t__ state; } ;
struct TYPE_2__ {scalar_t__ flags; } ;


 int MaxSector ;

__attribute__((used)) static void r5l_recovery_reset_stripe(struct stripe_head *sh)
{
 int i;

 sh->state = 0;
 sh->log_start = MaxSector;
 for (i = sh->disks; i--; )
  sh->dev[i].flags = 0;
}
