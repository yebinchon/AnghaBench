
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stripe_head_state {size_t* failed_num; int failed; int to_write; scalar_t__ replacing; scalar_t__ expanding; scalar_t__ syncing; } ;
struct stripe_head {scalar_t__ sector; scalar_t__ pd_idx; scalar_t__ qd_idx; TYPE_2__* raid_conf; int state; struct r5dev* dev; } ;
struct r5dev {int flags; scalar_t__ towrite; scalar_t__ toread; } ;
struct TYPE_4__ {int level; TYPE_1__* mddev; } ;
struct TYPE_3__ {scalar_t__ recovery_cp; } ;


 int R5_Insync ;
 int R5_LOCKED ;
 int R5_OVERWRITE ;
 int R5_UPTODATE ;
 int STRIPE_PREREAD_ACTIVE ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ want_replace (struct stripe_head*,int) ;

__attribute__((used)) static int need_this_block(struct stripe_head *sh, struct stripe_head_state *s,
      int disk_idx, int disks)
{
 struct r5dev *dev = &sh->dev[disk_idx];
 struct r5dev *fdev[2] = { &sh->dev[s->failed_num[0]],
      &sh->dev[s->failed_num[1]] };
 int i;


 if (test_bit(R5_LOCKED, &dev->flags) ||
     test_bit(R5_UPTODATE, &dev->flags))



  return 0;

 if (dev->toread ||
     (dev->towrite && !test_bit(R5_OVERWRITE, &dev->flags)))

  return 1;

 if (s->syncing || s->expanding ||
     (s->replacing && want_replace(sh, disk_idx)))



  return 1;

 if ((s->failed >= 1 && fdev[0]->toread) ||
     (s->failed >= 2 && fdev[1]->toread))



  return 1;
 if (!s->failed || !s->to_write)
  return 0;

 if (test_bit(R5_Insync, &dev->flags) &&
     !test_bit(STRIPE_PREREAD_ACTIVE, &sh->state))





  return 0;

 for (i = 0; i < s->failed && i < 2; i++) {
  if (fdev[i]->towrite &&
      !test_bit(R5_UPTODATE, &fdev[i]->flags) &&
      !test_bit(R5_OVERWRITE, &fdev[i]->flags))





   return 1;
 }
 if (sh->raid_conf->level != 6 &&
     sh->sector < sh->raid_conf->mddev->recovery_cp)

  return 0;
 for (i = 0; i < s->failed && i < 2; i++) {
  if (s->failed_num[i] != sh->pd_idx &&
      s->failed_num[i] != sh->qd_idx &&
      !test_bit(R5_UPTODATE, &fdev[i]->flags) &&
      !test_bit(R5_OVERWRITE, &fdev[i]->flags))
   return 1;
 }

 return 0;
}
