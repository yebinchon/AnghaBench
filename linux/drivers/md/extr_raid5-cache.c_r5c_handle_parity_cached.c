
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_head {int disks; TYPE_1__* dev; } ;
struct TYPE_2__ {int flags; } ;


 int R5_InJournal ;
 int R5_Wantwrite ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void r5c_handle_parity_cached(struct stripe_head *sh)
{
 int i;

 for (i = sh->disks; i--; )
  if (test_bit(R5_InJournal, &sh->dev[i].flags))
   set_bit(R5_Wantwrite, &sh->dev[i].flags);
}
