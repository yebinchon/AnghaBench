
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned long pages; struct bitmap_page* bp; } ;
struct bitmap_page {scalar_t__ cluster_slot; struct bitmap_page* map; int hijacked; TYPE_1__ counts; int storage; int pending_writes; int write_wait; TYPE_2__* mddev; scalar_t__ sysfs_can_clear; } ;
struct bitmap {scalar_t__ cluster_slot; struct bitmap* map; int hijacked; TYPE_1__ counts; int storage; int pending_writes; int write_wait; TYPE_2__* mddev; scalar_t__ sysfs_can_clear; } ;
struct TYPE_8__ {scalar_t__ (* slot_number ) (TYPE_2__*) ;} ;
struct TYPE_7__ {scalar_t__ cluster_info; } ;


 scalar_t__ atomic_read (int *) ;
 int kfree (struct bitmap_page*) ;
 int md_bitmap_file_unmap (int *) ;
 TYPE_5__* md_cluster_ops ;
 int md_cluster_stop (TYPE_2__*) ;
 scalar_t__ mddev_is_clustered (TYPE_2__*) ;
 scalar_t__ stub1 (TYPE_2__*) ;
 int sysfs_put (scalar_t__) ;
 int wait_event (int ,int) ;

void md_bitmap_free(struct bitmap *bitmap)
{
 unsigned long k, pages;
 struct bitmap_page *bp;

 if (!bitmap)
  return;

 if (bitmap->sysfs_can_clear)
  sysfs_put(bitmap->sysfs_can_clear);

 if (mddev_is_clustered(bitmap->mddev) && bitmap->mddev->cluster_info &&
  bitmap->cluster_slot == md_cluster_ops->slot_number(bitmap->mddev))
  md_cluster_stop(bitmap->mddev);


 wait_event(bitmap->write_wait,
     atomic_read(&bitmap->pending_writes) == 0);


 md_bitmap_file_unmap(&bitmap->storage);

 bp = bitmap->counts.bp;
 pages = bitmap->counts.pages;



 if (bp)
  for (k = 0; k < pages; k++)
   if (bp[k].map && !bp[k].hijacked)
    kfree(bp[k].map);
 kfree(bp);
 kfree(bitmap);
}
