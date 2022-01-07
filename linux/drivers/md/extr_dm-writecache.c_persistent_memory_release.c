
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_writecache {scalar_t__ start_sector; scalar_t__ memory_map; scalar_t__ memory_vmapped; } ;


 size_t SECTOR_SHIFT ;
 int vunmap (scalar_t__) ;

__attribute__((used)) static void persistent_memory_release(struct dm_writecache *wc)
{
 if (wc->memory_vmapped)
  vunmap(wc->memory_map - ((size_t)wc->start_sector << SECTOR_SHIFT));
}
