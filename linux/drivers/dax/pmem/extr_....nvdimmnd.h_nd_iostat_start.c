
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int part0; int queue; } ;
struct bio {struct gendisk* bi_disk; } ;


 int bio_op (struct bio*) ;
 int bio_sectors (struct bio*) ;
 int blk_queue_io_stat (int ) ;
 int generic_start_io_acct (int ,int ,int ,int *) ;
 unsigned long jiffies ;

__attribute__((used)) static inline bool nd_iostat_start(struct bio *bio, unsigned long *start)
{
 struct gendisk *disk = bio->bi_disk;

 if (!blk_queue_io_stat(disk->queue))
  return 0;

 *start = jiffies;
 generic_start_io_acct(disk->queue, bio_op(bio), bio_sectors(bio),
         &disk->part0);
 return 1;
}
