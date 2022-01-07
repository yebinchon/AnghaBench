
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stripe_head {int disks; int state; int sector; TYPE_2__* dev; } ;
struct r5conf {TYPE_1__* mddev; } ;
struct TYPE_4__ {int flags; scalar_t__ written; } ;
struct TYPE_3__ {int bitmap; } ;


 int R5_UPTODATE ;
 int STRIPE_DEGRADED ;
 int STRIPE_SECTORS ;
 int md_bitmap_endwrite (int ,int ,int ,int,int ) ;
 int r5c_return_dev_pending_writes (struct r5conf*,TYPE_2__*) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

void r5c_handle_cached_data_endio(struct r5conf *conf,
      struct stripe_head *sh, int disks)
{
 int i;

 for (i = sh->disks; i--; ) {
  if (sh->dev[i].written) {
   set_bit(R5_UPTODATE, &sh->dev[i].flags);
   r5c_return_dev_pending_writes(conf, &sh->dev[i]);
   md_bitmap_endwrite(conf->mddev->bitmap, sh->sector,
        STRIPE_SECTORS,
        !test_bit(STRIPE_DEGRADED, &sh->state),
        0);
  }
 }
}
