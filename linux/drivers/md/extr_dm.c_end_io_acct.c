
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mapped_device {int wait; int stats; int queue; } ;
struct dm_io {unsigned long start_time; int stats_aux; struct bio* orig_bio; struct mapped_device* md; } ;
struct TYPE_3__ {int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
struct TYPE_4__ {int part0; } ;


 int bio_data_dir (struct bio*) ;
 int bio_op (struct bio*) ;
 int bio_sectors (struct bio*) ;
 TYPE_2__* dm_disk (struct mapped_device*) ;
 int dm_stats_account_io (int *,int ,int ,int ,int,unsigned long,int *) ;
 int dm_stats_used (int *) ;
 int generic_end_io_acct (int ,int ,int *,unsigned long) ;
 unsigned long jiffies ;
 scalar_t__ unlikely (int ) ;
 int wake_up (int *) ;
 int wq_has_sleeper (int *) ;

__attribute__((used)) static void end_io_acct(struct dm_io *io)
{
 struct mapped_device *md = io->md;
 struct bio *bio = io->orig_bio;
 unsigned long duration = jiffies - io->start_time;

 generic_end_io_acct(md->queue, bio_op(bio), &dm_disk(md)->part0,
       io->start_time);

 if (unlikely(dm_stats_used(&md->stats)))
  dm_stats_account_io(&md->stats, bio_data_dir(bio),
        bio->bi_iter.bi_sector, bio_sectors(bio),
        1, duration, &io->stats_aux);


 if (unlikely(wq_has_sleeper(&md->wait)))
  wake_up(&md->wait);
}
