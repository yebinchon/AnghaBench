
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rsync_pages {int dummy; } ;
struct r10conf {int copies; TYPE_1__* mddev; int r10buf_pool; } ;
struct r10bio {TYPE_2__* devs; } ;
struct bio {struct rsync_pages* bi_private; } ;
struct TYPE_4__ {struct bio* repl_bio; struct bio* bio; } ;
struct TYPE_3__ {int recovery; } ;


 int GFP_NOIO ;
 int MD_RECOVERY_RESHAPE ;
 int MD_RECOVERY_SYNC ;
 int bio_reset (struct bio*) ;
 struct r10bio* mempool_alloc (int *,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static struct r10bio *raid10_alloc_init_r10buf(struct r10conf *conf)
{
 struct r10bio *r10bio = mempool_alloc(&conf->r10buf_pool, GFP_NOIO);
 struct rsync_pages *rp;
 struct bio *bio;
 int nalloc;
 int i;

 if (test_bit(MD_RECOVERY_SYNC, &conf->mddev->recovery) ||
     test_bit(MD_RECOVERY_RESHAPE, &conf->mddev->recovery))
  nalloc = conf->copies;
 else
  nalloc = 2;

 for (i = 0; i < nalloc; i++) {
  bio = r10bio->devs[i].bio;
  rp = bio->bi_private;
  bio_reset(bio);
  bio->bi_private = rp;
  bio = r10bio->devs[i].repl_bio;
  if (bio) {
   rp = bio->bi_private;
   bio_reset(bio);
   bio->bi_private = rp;
  }
 }
 return r10bio;
}
