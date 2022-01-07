
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_head {int disks; int state; TYPE_1__* dev; } ;
struct TYPE_2__ {int flags; } ;


 int R5_InJournal ;
 int R5_LOCKED ;
 int R5_Wantwrite ;
 int STRIPE_LOG_TRAPPED ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void r5c_handle_data_cached(struct stripe_head *sh)
{
 int i;

 for (i = sh->disks; i--; )
  if (test_and_clear_bit(R5_Wantwrite, &sh->dev[i].flags)) {
   set_bit(R5_InJournal, &sh->dev[i].flags);
   clear_bit(R5_LOCKED, &sh->dev[i].flags);
  }
 clear_bit(STRIPE_LOG_TRAPPED, &sh->state);
}
