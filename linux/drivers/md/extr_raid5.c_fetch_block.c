
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_head_state {int uptodate; int failed; int* failed_num; int req_compute; int syncing; int locked; int ops_request; } ;
struct TYPE_2__ {int target; int target2; } ;
struct stripe_head {int batch_head; scalar_t__ qd_idx; int pd_idx; TYPE_1__ ops; struct r5dev* dev; int state; scalar_t__ sector; } ;
struct r5dev {int flags; } ;


 int BUG_ON (int) ;
 int R5_Insync ;
 int R5_LOCKED ;
 int R5_UPTODATE ;
 int R5_Wantcompute ;
 int R5_Wantread ;
 int STRIPE_COMPUTE_RUN ;
 int STRIPE_OP_COMPUTE_BLK ;
 scalar_t__ need_this_block (struct stripe_head*,struct stripe_head_state*,int,int) ;
 int pr_debug (char*,int,int,...) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int fetch_block(struct stripe_head *sh, struct stripe_head_state *s,
         int disk_idx, int disks)
{
 struct r5dev *dev = &sh->dev[disk_idx];


 if (need_this_block(sh, s, disk_idx, disks)) {



  BUG_ON(test_bit(R5_Wantcompute, &dev->flags));
  BUG_ON(test_bit(R5_Wantread, &dev->flags));
  BUG_ON(sh->batch_head);
  if ((s->uptodate == disks - 1) &&
      ((sh->qd_idx >= 0 && sh->pd_idx == disk_idx) ||
      (s->failed && (disk_idx == s->failed_num[0] ||
       disk_idx == s->failed_num[1])))) {



   pr_debug("Computing stripe %llu block %d\n",
          (unsigned long long)sh->sector, disk_idx);
   set_bit(STRIPE_COMPUTE_RUN, &sh->state);
   set_bit(STRIPE_OP_COMPUTE_BLK, &s->ops_request);
   set_bit(R5_Wantcompute, &dev->flags);
   sh->ops.target = disk_idx;
   sh->ops.target2 = -1;
   s->req_compute = 1;






   s->uptodate++;
   return 1;
  } else if (s->uptodate == disks-2 && s->failed >= 2) {



   int other;
   for (other = disks; other--; ) {
    if (other == disk_idx)
     continue;
    if (!test_bit(R5_UPTODATE,
          &sh->dev[other].flags))
     break;
   }
   BUG_ON(other < 0);
   pr_debug("Computing stripe %llu blocks %d,%d\n",
          (unsigned long long)sh->sector,
          disk_idx, other);
   set_bit(STRIPE_COMPUTE_RUN, &sh->state);
   set_bit(STRIPE_OP_COMPUTE_BLK, &s->ops_request);
   set_bit(R5_Wantcompute, &sh->dev[disk_idx].flags);
   set_bit(R5_Wantcompute, &sh->dev[other].flags);
   sh->ops.target = disk_idx;
   sh->ops.target2 = other;
   s->uptodate += 2;
   s->req_compute = 1;
   return 1;
  } else if (test_bit(R5_Insync, &dev->flags)) {
   set_bit(R5_LOCKED, &dev->flags);
   set_bit(R5_Wantread, &dev->flags);
   s->locked++;
   pr_debug("Reading block %d (sync=%d)\n",
    disk_idx, s->syncing);
  }
 }

 return 0;
}
