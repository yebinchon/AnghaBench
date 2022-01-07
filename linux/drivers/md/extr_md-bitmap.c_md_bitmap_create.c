
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ daemon_sleep; int chunksize; int external; scalar_t__ offset; struct file* file; } ;
struct TYPE_5__ {struct kernfs_node* sd; } ;
struct mddev {TYPE_3__ bitmap_info; int flags; TYPE_1__ kobj; int resync_max_sectors; } ;
struct kernfs_node {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_8__ {int pages; int lock; } ;
struct TYPE_6__ {struct file* file; } ;
struct bitmap {int cluster_slot; int flags; TYPE_4__ counts; int daemon_lastrun; TYPE_2__ storage; int * sysfs_can_clear; struct mddev* mddev; int behind_wait; int overflow_wait; int write_wait; int pending_writes; } ;
typedef int sector_t ;
typedef int bitmap_super_t ;


 int BITMAP_WRITE_ERROR ;
 int BUG_ON (int) ;
 int BUILD_BUG_ON (int) ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 struct bitmap* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int MD_ARRAY_FIRST_USE ;
 int MD_HAS_JOURNAL ;
 int atomic_set (int *,int ) ;
 int bmname (struct bitmap*) ;
 int get_file (struct file*) ;
 int init_waitqueue_head (int *) ;
 int jiffies ;
 struct bitmap* kzalloc (int,int ) ;
 int md_bitmap_free (struct bitmap*) ;
 int md_bitmap_new_disk_sb (struct bitmap*) ;
 int md_bitmap_read_sb (struct bitmap*) ;
 int md_bitmap_resize (struct bitmap*,int ,int ,int) ;
 int mdname (struct mddev*) ;
 int pr_debug (char*,int ,int ) ;
 int pr_notice (char*,int ) ;
 int spin_lock_init (int *) ;
 void* sysfs_get_dirent (struct kernfs_node*,char*) ;
 int sysfs_put (struct kernfs_node*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int vfs_fsync (struct file*,int) ;

struct bitmap *md_bitmap_create(struct mddev *mddev, int slot)
{
 struct bitmap *bitmap;
 sector_t blocks = mddev->resync_max_sectors;
 struct file *file = mddev->bitmap_info.file;
 int err;
 struct kernfs_node *bm = ((void*)0);

 BUILD_BUG_ON(sizeof(bitmap_super_t) != 256);

 BUG_ON(file && mddev->bitmap_info.offset);

 if (test_bit(MD_HAS_JOURNAL, &mddev->flags)) {
  pr_notice("md/raid:%s: array with journal cannot have bitmap\n",
     mdname(mddev));
  return ERR_PTR(-EBUSY);
 }

 bitmap = kzalloc(sizeof(*bitmap), GFP_KERNEL);
 if (!bitmap)
  return ERR_PTR(-ENOMEM);

 spin_lock_init(&bitmap->counts.lock);
 atomic_set(&bitmap->pending_writes, 0);
 init_waitqueue_head(&bitmap->write_wait);
 init_waitqueue_head(&bitmap->overflow_wait);
 init_waitqueue_head(&bitmap->behind_wait);

 bitmap->mddev = mddev;
 bitmap->cluster_slot = slot;

 if (mddev->kobj.sd)
  bm = sysfs_get_dirent(mddev->kobj.sd, "bitmap");
 if (bm) {
  bitmap->sysfs_can_clear = sysfs_get_dirent(bm, "can_clear");
  sysfs_put(bm);
 } else
  bitmap->sysfs_can_clear = ((void*)0);

 bitmap->storage.file = file;
 if (file) {
  get_file(file);




  vfs_fsync(file, 1);
 }

 if (!mddev->bitmap_info.external) {




  if (test_and_clear_bit(MD_ARRAY_FIRST_USE, &mddev->flags))
   err = md_bitmap_new_disk_sb(bitmap);
  else
   err = md_bitmap_read_sb(bitmap);
 } else {
  err = 0;
  if (mddev->bitmap_info.chunksize == 0 ||
      mddev->bitmap_info.daemon_sleep == 0)


   err = -EINVAL;
 }
 if (err)
  goto error;

 bitmap->daemon_lastrun = jiffies;
 err = md_bitmap_resize(bitmap, blocks, mddev->bitmap_info.chunksize, 1);
 if (err)
  goto error;

 pr_debug("created bitmap (%lu pages) for device %s\n",
   bitmap->counts.pages, bmname(bitmap));

 err = test_bit(BITMAP_WRITE_ERROR, &bitmap->flags) ? -EIO : 0;
 if (err)
  goto error;

 return bitmap;
 error:
 md_bitmap_free(bitmap);
 return ERR_PTR(err);
}
