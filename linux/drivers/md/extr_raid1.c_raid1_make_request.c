
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {int dummy; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {int bi_opf; TYPE_1__ bi_iter; } ;
typedef int sector_t ;


 scalar_t__ READ ;
 int REQ_PREFLUSH ;
 int align_to_barrier_unit_end (int ,int ) ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int bio_sectors (struct bio*) ;
 int md_flush_request (struct mddev*,struct bio*) ;
 int md_write_start (struct mddev*,struct bio*) ;
 int raid1_read_request (struct mddev*,struct bio*,int ,int *) ;
 int raid1_write_request (struct mddev*,struct bio*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool raid1_make_request(struct mddev *mddev, struct bio *bio)
{
 sector_t sectors;

 if (unlikely(bio->bi_opf & REQ_PREFLUSH)) {
  md_flush_request(mddev, bio);
  return 1;
 }
 sectors = align_to_barrier_unit_end(
  bio->bi_iter.bi_sector, bio_sectors(bio));

 if (bio_data_dir(bio) == READ)
  raid1_read_request(mddev, bio, sectors, ((void*)0));
 else {
  if (!md_write_start(mddev,bio))
   return 0;
  raid1_write_request(mddev, bio, sectors);
 }
 return 1;
}
