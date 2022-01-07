
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_writecache {int dirty_bitmap_size; int dirty_bitmap; } ;


 int WC_MODE_PMEM (struct dm_writecache*) ;
 int memset (int ,int,int ) ;

__attribute__((used)) static void writecache_flush_all_metadata(struct dm_writecache *wc)
{
 if (!WC_MODE_PMEM(wc))
  memset(wc->dirty_bitmap, -1, wc->dirty_bitmap_size);
}
