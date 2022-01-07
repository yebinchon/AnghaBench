
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stripe_head {TYPE_2__* dev; } ;
struct r5conf {int retry_read_offset; int wait_for_quiescent; int active_aligned_reads; struct bio* retry_read_aligned; } ;
struct TYPE_3__ {int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef int sector_t ;
struct TYPE_4__ {int flags; } ;


 int R5_ReadNoMerge ;
 scalar_t__ STRIPE_SECTORS ;
 int add_stripe_bio (struct stripe_head*,struct bio*,int,int ,int ) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int bio_end_sector (struct bio*) ;
 int bio_endio (struct bio*) ;
 int handle_stripe (struct stripe_head*) ;
 int raid5_compute_sector (struct r5conf*,int,int ,int*,int *) ;
 struct stripe_head* raid5_get_active_stripe (struct r5conf*,int,int ,int,int) ;
 int raid5_release_stripe (struct stripe_head*) ;
 int set_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int retry_aligned_read(struct r5conf *conf, struct bio *raid_bio,
          unsigned int offset)
{
 struct stripe_head *sh;
 int dd_idx;
 sector_t sector, logical_sector, last_sector;
 int scnt = 0;
 int handled = 0;

 logical_sector = raid_bio->bi_iter.bi_sector &
  ~((sector_t)STRIPE_SECTORS-1);
 sector = raid5_compute_sector(conf, logical_sector,
          0, &dd_idx, ((void*)0));
 last_sector = bio_end_sector(raid_bio);

 for (; logical_sector < last_sector;
      logical_sector += STRIPE_SECTORS,
       sector += STRIPE_SECTORS,
       scnt++) {

  if (scnt < offset)

   continue;

  sh = raid5_get_active_stripe(conf, sector, 0, 1, 1);

  if (!sh) {

   conf->retry_read_aligned = raid_bio;
   conf->retry_read_offset = scnt;
   return handled;
  }

  if (!add_stripe_bio(sh, raid_bio, dd_idx, 0, 0)) {
   raid5_release_stripe(sh);
   conf->retry_read_aligned = raid_bio;
   conf->retry_read_offset = scnt;
   return handled;
  }

  set_bit(R5_ReadNoMerge, &sh->dev[dd_idx].flags);
  handle_stripe(sh);
  raid5_release_stripe(sh);
  handled++;
 }

 bio_endio(raid_bio);

 if (atomic_dec_and_test(&conf->active_aligned_reads))
  wake_up(&conf->wait_for_quiescent);
 return handled;
}
