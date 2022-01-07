
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bcache_device {int cl; int stripe_sectors_dirty; int full_dirty_stripes; int bio_split; TYPE_1__* disk; scalar_t__ c; } ;
struct TYPE_3__ {int flags; int first_minor; scalar_t__ queue; int disk_name; } ;


 int GENHD_FL_UP ;
 int bcache_device_detach (struct bcache_device*) ;
 int bcache_device_idx ;
 int bch_register_lock ;
 int bioset_exit (int *) ;
 int blk_cleanup_queue (scalar_t__) ;
 int closure_debug_destroy (int *) ;
 int del_gendisk (TYPE_1__*) ;
 int first_minor_to_idx (int ) ;
 int ida_simple_remove (int *,int ) ;
 int kvfree (int ) ;
 int lockdep_assert_held (int *) ;
 int pr_info (char*,int ) ;
 int put_disk (TYPE_1__*) ;

__attribute__((used)) static void bcache_device_free(struct bcache_device *d)
{
 lockdep_assert_held(&bch_register_lock);

 pr_info("%s stopped", d->disk->disk_name);

 if (d->c)
  bcache_device_detach(d);
 if (d->disk && d->disk->flags & GENHD_FL_UP)
  del_gendisk(d->disk);
 if (d->disk && d->disk->queue)
  blk_cleanup_queue(d->disk->queue);
 if (d->disk) {
  ida_simple_remove(&bcache_device_idx,
      first_minor_to_idx(d->disk->first_minor));
  put_disk(d->disk);
 }

 bioset_exit(&d->bio_split);
 kvfree(d->full_dirty_stripes);
 kvfree(d->stripe_sectors_dirty);

 closure_debug_destroy(&d->cl);
}
