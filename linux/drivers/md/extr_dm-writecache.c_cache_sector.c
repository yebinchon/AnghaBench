
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wc_entry {scalar_t__ index; } ;
struct dm_writecache {int start_sector; int metadata_sectors; int block_size_bits; } ;
typedef int sector_t ;


 int SECTOR_SHIFT ;

__attribute__((used)) static sector_t cache_sector(struct dm_writecache *wc, struct wc_entry *e)
{
 return wc->start_sector + wc->metadata_sectors +
  ((sector_t)e->index << (wc->block_size_bits - SECTOR_SHIFT));
}
