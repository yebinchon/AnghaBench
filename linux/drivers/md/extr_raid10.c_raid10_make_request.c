
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int chunk_mask; scalar_t__ near_copies; scalar_t__ raid_disks; } ;
struct TYPE_4__ {int chunk_mask; scalar_t__ near_copies; scalar_t__ raid_disks; } ;
struct r10conf {int wait_barrier; TYPE_2__ prev; TYPE_1__ geo; } ;
struct mddev {struct r10conf* private; } ;
struct TYPE_6__ {int bi_sector; } ;
struct bio {int bi_opf; TYPE_3__ bi_iter; } ;
typedef int sector_t ;


 int REQ_PREFLUSH ;
 int __make_request (struct mddev*,struct bio*,int) ;
 int bio_sectors (struct bio*) ;
 int md_flush_request (struct mddev*,struct bio*) ;
 int md_write_start (struct mddev*,struct bio*) ;
 scalar_t__ unlikely (int) ;
 int wake_up (int *) ;

__attribute__((used)) static bool raid10_make_request(struct mddev *mddev, struct bio *bio)
{
 struct r10conf *conf = mddev->private;
 sector_t chunk_mask = (conf->geo.chunk_mask & conf->prev.chunk_mask);
 int chunk_sects = chunk_mask + 1;
 int sectors = bio_sectors(bio);

 if (unlikely(bio->bi_opf & REQ_PREFLUSH)) {
  md_flush_request(mddev, bio);
  return 1;
 }

 if (!md_write_start(mddev, bio))
  return 0;





 if (unlikely((bio->bi_iter.bi_sector & chunk_mask) +
       sectors > chunk_sects
       && (conf->geo.near_copies < conf->geo.raid_disks
    || conf->prev.near_copies <
    conf->prev.raid_disks)))
  sectors = chunk_sects -
   (bio->bi_iter.bi_sector &
    (chunk_sects - 1));
 __make_request(mddev, bio, sectors);


 wake_up(&conf->wait_barrier);
 return 1;
}
