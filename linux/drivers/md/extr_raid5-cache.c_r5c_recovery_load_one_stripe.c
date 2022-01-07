
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {int disks; struct r5dev* dev; } ;
struct r5l_log {int dummy; } ;
struct r5dev {int flags; } ;


 int R5_InJournal ;
 int R5_UPTODATE ;
 int R5_Wantwrite ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void r5c_recovery_load_one_stripe(struct r5l_log *log,
      struct stripe_head *sh)
{
 struct r5dev *dev;
 int i;

 for (i = sh->disks; i--; ) {
  dev = sh->dev + i;
  if (test_and_clear_bit(R5_Wantwrite, &dev->flags)) {
   set_bit(R5_InJournal, &dev->flags);
   set_bit(R5_UPTODATE, &dev->flags);
  }
 }
}
