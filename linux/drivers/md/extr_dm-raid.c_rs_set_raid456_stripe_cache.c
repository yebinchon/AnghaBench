
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct mddev {struct r5conf* private; int new_chunk_sectors; int chunk_sectors; } ;
struct raid_set {scalar_t__ stripe_cache_entries; TYPE_1__* ti; int raid_type; struct mddev md; } ;
struct r5conf {scalar_t__ min_nr_stripes; } ;
struct TYPE_2__ {char* error; } ;


 int DMINFO (char*,scalar_t__,...) ;
 int EINVAL ;
 int max (int ,int ) ;
 int raid5_set_cache_size (struct mddev*,scalar_t__) ;
 int rt_is_raid456 (int ) ;

__attribute__((used)) static int rs_set_raid456_stripe_cache(struct raid_set *rs)
{
 int r;
 struct r5conf *conf;
 struct mddev *mddev = &rs->md;
 uint32_t min_stripes = max(mddev->chunk_sectors, mddev->new_chunk_sectors) / 2;
 uint32_t nr_stripes = rs->stripe_cache_entries;

 if (!rt_is_raid456(rs->raid_type)) {
  rs->ti->error = "Inappropriate raid level; cannot change stripe_cache size";
  return -EINVAL;
 }

 if (nr_stripes < min_stripes) {
  DMINFO("Adjusting requested %u stripe cache entries to %u to suit stripe size",
         nr_stripes, min_stripes);
  nr_stripes = min_stripes;
 }

 conf = mddev->private;
 if (!conf) {
  rs->ti->error = "Cannot change stripe_cache size on inactive RAID set";
  return -EINVAL;
 }


 if (conf->min_nr_stripes != nr_stripes) {
  r = raid5_set_cache_size(mddev, nr_stripes);
  if (r) {
   rs->ti->error = "Failed to set raid4/5/6 stripe cache size";
   return r;
  }

  DMINFO("%u stripe cache entries", nr_stripes);
 }

 return 0;
}
