
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resync_pages {int dummy; } ;
struct r1conf {TYPE_1__* poolinfo; int r1buf_pool; } ;
struct r1bio {int * master_bio; struct bio** bios; } ;
struct bio {struct resync_pages* bi_private; } ;
struct TYPE_2__ {int raid_disks; } ;


 int GFP_NOIO ;
 int bio_reset (struct bio*) ;
 struct r1bio* mempool_alloc (int *,int ) ;

__attribute__((used)) static struct r1bio *raid1_alloc_init_r1buf(struct r1conf *conf)
{
 struct r1bio *r1bio = mempool_alloc(&conf->r1buf_pool, GFP_NOIO);
 struct resync_pages *rps;
 struct bio *bio;
 int i;

 for (i = conf->poolinfo->raid_disks; i--; ) {
  bio = r1bio->bios[i];
  rps = bio->bi_private;
  bio_reset(bio);
  bio->bi_private = rps;
 }
 r1bio->master_bio = ((void*)0);
 return r1bio;
}
