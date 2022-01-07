
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_head {int disks; int pd_idx; int qd_idx; int state; TYPE_1__* dev; int batch_head; } ;
struct r5conf {int raid_disks; } ;
struct dma_async_tx_descriptor {int dummy; } ;
struct async_submit_ctl {int dummy; } ;
typedef int sector_t ;
struct TYPE_2__ {int flags; int page; } ;


 int BUG_ON (int ) ;
 int R5_Expanded ;
 int R5_UPTODATE ;
 int STRIPE_EXPANDING ;
 int STRIPE_EXPAND_READY ;
 int STRIPE_EXPAND_SOURCE ;
 int STRIPE_HANDLE ;
 int STRIPE_SIZE ;
 struct dma_async_tx_descriptor* async_memcpy (int ,int ,int ,int ,int ,struct async_submit_ctl*) ;
 int async_tx_quiesce (struct dma_async_tx_descriptor**) ;
 int clear_bit (int ,int *) ;
 int init_async_submit (struct async_submit_ctl*,int ,struct dma_async_tx_descriptor*,int *,int *,int *) ;
 int raid5_compute_blocknr (struct stripe_head*,int,int) ;
 int raid5_compute_sector (struct r5conf*,int ,int ,int*,int *) ;
 struct stripe_head* raid5_get_active_stripe (struct r5conf*,int ,int ,int,int) ;
 int raid5_release_stripe (struct stripe_head*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void handle_stripe_expansion(struct r5conf *conf, struct stripe_head *sh)
{
 int i;




 struct dma_async_tx_descriptor *tx = ((void*)0);
 BUG_ON(sh->batch_head);
 clear_bit(STRIPE_EXPAND_SOURCE, &sh->state);
 for (i = 0; i < sh->disks; i++)
  if (i != sh->pd_idx && i != sh->qd_idx) {
   int dd_idx, j;
   struct stripe_head *sh2;
   struct async_submit_ctl submit;

   sector_t bn = raid5_compute_blocknr(sh, i, 1);
   sector_t s = raid5_compute_sector(conf, bn, 0,
         &dd_idx, ((void*)0));
   sh2 = raid5_get_active_stripe(conf, s, 0, 1, 1);
   if (sh2 == ((void*)0))




    continue;
   if (!test_bit(STRIPE_EXPANDING, &sh2->state) ||
      test_bit(R5_Expanded, &sh2->dev[dd_idx].flags)) {

    raid5_release_stripe(sh2);
    continue;
   }


   init_async_submit(&submit, 0, tx, ((void*)0), ((void*)0), ((void*)0));
   tx = async_memcpy(sh2->dev[dd_idx].page,
       sh->dev[i].page, 0, 0, STRIPE_SIZE,
       &submit);

   set_bit(R5_Expanded, &sh2->dev[dd_idx].flags);
   set_bit(R5_UPTODATE, &sh2->dev[dd_idx].flags);
   for (j = 0; j < conf->raid_disks; j++)
    if (j != sh2->pd_idx &&
        j != sh2->qd_idx &&
        !test_bit(R5_Expanded, &sh2->dev[j].flags))
     break;
   if (j == conf->raid_disks) {
    set_bit(STRIPE_EXPAND_READY, &sh2->state);
    set_bit(STRIPE_HANDLE, &sh2->state);
   }
   raid5_release_stripe(sh2);

  }

 async_tx_quiesce(&tx);
}
