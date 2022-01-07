
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_7__* sb_page; } ;
struct bitmap {unsigned long flags; TYPE_3__* mddev; int events_cleared; TYPE_1__ storage; } ;
struct TYPE_12__ {void* events_cleared; void* state; int uuid; void* sync_size; void* write_behind; void* daemon_sleep; void* chunksize; void* version; void* magic; } ;
typedef TYPE_4__ bitmap_super_t ;
struct TYPE_13__ {scalar_t__ index; } ;
struct TYPE_10__ {unsigned long chunksize; unsigned long daemon_sleep; unsigned long max_write_behind; scalar_t__ nodes; } ;
struct TYPE_11__ {TYPE_2__ bitmap_info; int events; int uuid; int resync_max_sectors; } ;


 unsigned long BITMAP_MAGIC ;
 unsigned long BITMAP_MAJOR_HI ;
 int BITMAP_STALE ;
 int BUG_ON (int) ;
 unsigned long COUNTER_MAX ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 unsigned long MAX_SCHEDULE_TIMEOUT ;
 int __GFP_ZERO ;
 TYPE_7__* alloc_page (int) ;
 void* cpu_to_le32 (unsigned long) ;
 void* cpu_to_le64 (int ) ;
 int is_power_of_2 (unsigned long) ;
 TYPE_4__* kmap_atomic (TYPE_7__*) ;
 int kunmap_atomic (TYPE_4__*) ;
 int memcpy (int ,int ,int) ;
 int pr_debug (char*) ;
 int pr_warn (char*) ;
 int set_bit (int ,unsigned long*) ;

__attribute__((used)) static int md_bitmap_new_disk_sb(struct bitmap *bitmap)
{
 bitmap_super_t *sb;
 unsigned long chunksize, daemon_sleep, write_behind;

 bitmap->storage.sb_page = alloc_page(GFP_KERNEL | __GFP_ZERO);
 if (bitmap->storage.sb_page == ((void*)0))
  return -ENOMEM;
 bitmap->storage.sb_page->index = 0;

 sb = kmap_atomic(bitmap->storage.sb_page);

 sb->magic = cpu_to_le32(BITMAP_MAGIC);
 sb->version = cpu_to_le32(BITMAP_MAJOR_HI);

 chunksize = bitmap->mddev->bitmap_info.chunksize;
 BUG_ON(!chunksize);
 if (!is_power_of_2(chunksize)) {
  kunmap_atomic(sb);
  pr_warn("bitmap chunksize not a power of 2\n");
  return -EINVAL;
 }
 sb->chunksize = cpu_to_le32(chunksize);

 daemon_sleep = bitmap->mddev->bitmap_info.daemon_sleep;
 if (!daemon_sleep || (daemon_sleep > MAX_SCHEDULE_TIMEOUT)) {
  pr_debug("Choosing daemon_sleep default (5 sec)\n");
  daemon_sleep = 5 * HZ;
 }
 sb->daemon_sleep = cpu_to_le32(daemon_sleep);
 bitmap->mddev->bitmap_info.daemon_sleep = daemon_sleep;





 write_behind = bitmap->mddev->bitmap_info.max_write_behind;
 if (write_behind > COUNTER_MAX)
  write_behind = COUNTER_MAX / 2;
 sb->write_behind = cpu_to_le32(write_behind);
 bitmap->mddev->bitmap_info.max_write_behind = write_behind;


 sb->sync_size = cpu_to_le64(bitmap->mddev->resync_max_sectors);

 memcpy(sb->uuid, bitmap->mddev->uuid, 16);

 set_bit(BITMAP_STALE, &bitmap->flags);
 sb->state = cpu_to_le32(bitmap->flags);
 bitmap->events_cleared = bitmap->mddev->events;
 sb->events_cleared = cpu_to_le64(bitmap->mddev->events);
 bitmap->mddev->bitmap_info.nodes = 0;

 kunmap_atomic(sb);

 return 0;
}
