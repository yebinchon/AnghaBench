
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_struct {int bio; struct dm_writecache* wc; } ;
struct wc_entry {int dummy; } ;
struct dm_writecache {unsigned int block_size; } ;
typedef int gfp_t ;


 scalar_t__ bio_add_page (int *,int ,unsigned int,int ) ;
 void* memory_data (struct dm_writecache*,struct wc_entry*) ;
 int persistent_memory_flush_cache (void*,unsigned int) ;
 int persistent_memory_page (void*) ;
 int persistent_memory_page_offset (void*) ;

__attribute__((used)) static bool wc_add_block(struct writeback_struct *wb, struct wc_entry *e, gfp_t gfp)
{
 struct dm_writecache *wc = wb->wc;
 unsigned block_size = wc->block_size;
 void *address = memory_data(wc, e);

 persistent_memory_flush_cache(address, block_size);
 return bio_add_page(&wb->bio, persistent_memory_page(address),
       block_size, persistent_memory_page_offset(address)) != 0;
}
