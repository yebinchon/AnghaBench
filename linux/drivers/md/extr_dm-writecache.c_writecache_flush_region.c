
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_writecache {int dirty_bitmap; scalar_t__ memory_map; } ;


 int BITMAP_GRANULARITY ;
 int WC_MODE_PMEM (struct dm_writecache*) ;
 int __set_bit (int,int ) ;

__attribute__((used)) static void writecache_flush_region(struct dm_writecache *wc, void *ptr, size_t size)
{
 if (!WC_MODE_PMEM(wc))
  __set_bit(((char *)ptr - (char *)wc->memory_map) / BITMAP_GRANULARITY,
     wc->dirty_bitmap);
}
