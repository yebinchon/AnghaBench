
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wc_memory_entry {int dummy; } ;
struct wc_entry {int dummy; } ;
struct dm_writecache {int block_size; } ;


 scalar_t__ WC_MODE_PMEM (struct dm_writecache*) ;
 int memory_data (struct dm_writecache*,struct wc_entry*) ;
 int memory_entry (struct dm_writecache*,struct wc_entry*) ;
 int writecache_flush_region (struct dm_writecache*,int ,int) ;

__attribute__((used)) static void writecache_flush_entry(struct dm_writecache *wc, struct wc_entry *e)
{
 writecache_flush_region(wc, memory_entry(wc, e), sizeof(struct wc_memory_entry));
 if (WC_MODE_PMEM(wc))
  writecache_flush_region(wc, memory_data(wc, e), wc->block_size);
}
