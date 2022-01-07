
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wc_memory_entry {int dummy; } ;
struct wc_entry {int dummy; } ;
struct dm_writecache {int freelist_wait; } ;


 int clear_seq_count (struct dm_writecache*,struct wc_entry*) ;
 int memory_entry (struct dm_writecache*,struct wc_entry*) ;
 scalar_t__ unlikely (int ) ;
 int waitqueue_active (int *) ;
 int wake_up (int *) ;
 int writecache_add_to_freelist (struct dm_writecache*,struct wc_entry*) ;
 int writecache_flush_region (struct dm_writecache*,int ,int) ;
 int writecache_unlink (struct dm_writecache*,struct wc_entry*) ;

__attribute__((used)) static void writecache_free_entry(struct dm_writecache *wc, struct wc_entry *e)
{
 writecache_unlink(wc, e);
 writecache_add_to_freelist(wc, e);
 clear_seq_count(wc, e);
 writecache_flush_region(wc, memory_entry(wc, e), sizeof(struct wc_memory_entry));
 if (unlikely(waitqueue_active(&wc->freelist_wait)))
  wake_up(&wc->freelist_wait);
}
