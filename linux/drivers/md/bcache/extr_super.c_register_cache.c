
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct page {int dummy; } ;
struct cache_sb {int dummy; } ;
struct TYPE_6__ {int bi_inline_vecs; } ;
struct cache {int cache_dev_name; int kobj; int sb; int discard; TYPE_2__ sb_bio; struct block_device* bdev; } ;
struct block_device {int bd_part; struct cache* bd_holder; } ;
struct TYPE_7__ {struct page* bv_page; } ;
struct TYPE_5__ {int kobj; } ;


 int CACHE_DISCARD (int *) ;
 int ENODEV ;
 int ENOMEM ;
 int EPERM ;
 int FMODE_EXCL ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int bch_register_lock ;
 int bdev_get_queue (struct block_device*) ;
 int bdevname (struct block_device*,int ) ;
 TYPE_3__* bio_first_bvec_all (TYPE_2__*) ;
 int bio_init (TYPE_2__*,int ,int) ;
 scalar_t__ blk_queue_discard (int ) ;
 int blkdev_put (struct block_device*,int) ;
 int cache_alloc (struct cache*) ;
 int get_page (struct page*) ;
 scalar_t__ kobject_add (int *,int *,char*) ;
 int kobject_put (int *) ;
 int memcpy (int *,struct cache_sb*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* part_to_dev (int ) ;
 int pr_info (char*,int ) ;
 int pr_notice (char*,int ,char const*) ;
 char* register_cache_set (struct cache*) ;

__attribute__((used)) static int register_cache(struct cache_sb *sb, struct page *sb_page,
    struct block_device *bdev, struct cache *ca)
{
 const char *err = ((void*)0);
 int ret = 0;

 bdevname(bdev, ca->cache_dev_name);
 memcpy(&ca->sb, sb, sizeof(struct cache_sb));
 ca->bdev = bdev;
 ca->bdev->bd_holder = ca;

 bio_init(&ca->sb_bio, ca->sb_bio.bi_inline_vecs, 1);
 bio_first_bvec_all(&ca->sb_bio)->bv_page = sb_page;
 get_page(sb_page);

 if (blk_queue_discard(bdev_get_queue(bdev)))
  ca->discard = CACHE_DISCARD(&ca->sb);

 ret = cache_alloc(ca);
 if (ret != 0) {






  blkdev_put(bdev, FMODE_READ|FMODE_WRITE|FMODE_EXCL);
  if (ret == -ENOMEM)
   err = "cache_alloc(): -ENOMEM";
  else if (ret == -EPERM)
   err = "cache_alloc(): cache device is too small";
  else
   err = "cache_alloc(): unknown error";
  goto err;
 }

 if (kobject_add(&ca->kobj,
   &part_to_dev(bdev->bd_part)->kobj,
   "bcache")) {
  err = "error calling kobject_add";
  ret = -ENOMEM;
  goto out;
 }

 mutex_lock(&bch_register_lock);
 err = register_cache_set(ca);
 mutex_unlock(&bch_register_lock);

 if (err) {
  ret = -ENODEV;
  goto out;
 }

 pr_info("registered cache device %s", ca->cache_dev_name);

out:
 kobject_put(&ca->kobj);

err:
 if (err)
  pr_notice("error %s: %s", ca->cache_dev_name, err);

 return ret;
}
