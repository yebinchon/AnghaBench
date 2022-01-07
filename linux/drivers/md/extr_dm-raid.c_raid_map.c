
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {scalar_t__ array_sectors; } ;
struct raid_set {struct mddev md; } ;
struct dm_target {struct raid_set* private; } ;
struct bio {int dummy; } ;


 int DM_MAPIO_REQUEUE ;
 int DM_MAPIO_SUBMITTED ;
 scalar_t__ bio_end_sector (struct bio*) ;
 int md_handle_request (struct mddev*,struct bio*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int raid_map(struct dm_target *ti, struct bio *bio)
{
 struct raid_set *rs = ti->private;
 struct mddev *mddev = &rs->md;
 if (unlikely(bio_end_sector(bio) > mddev->array_sectors))
  return DM_MAPIO_REQUEUE;

 md_handle_request(mddev, bio);

 return DM_MAPIO_SUBMITTED;
}
