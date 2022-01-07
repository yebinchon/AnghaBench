
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mapped_device {int stats; int queue; } ;
struct dm_io {int stats_aux; int start_time; struct bio* orig_bio; struct mapped_device* md; } ;
struct TYPE_3__ {int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
struct TYPE_4__ {int part0; } ;


 int bio_data_dir (struct bio*) ;
 int bio_op (struct bio*) ;
 int bio_sectors (struct bio*) ;
 TYPE_2__* dm_disk (struct mapped_device*) ;
 int dm_stats_account_io (int *,int ,int ,int ,int,int ,int *) ;
 int dm_stats_used (int *) ;
 int generic_start_io_acct (int ,int ,int ,int *) ;
 int jiffies ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void start_io_acct(struct dm_io *io)
{
 struct mapped_device *md = io->md;
 struct bio *bio = io->orig_bio;

 io->start_time = jiffies;

 generic_start_io_acct(md->queue, bio_op(bio), bio_sectors(bio),
         &dm_disk(md)->part0);

 if (unlikely(dm_stats_used(&md->stats)))
  dm_stats_account_io(&md->stats, bio_data_dir(bio),
        bio->bi_iter.bi_sector, bio_sectors(bio),
        0, 0, &io->stats_aux);
}
