
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_writecache {scalar_t__ writeback_size; } ;


 int writecache_wait_on_freelist (struct dm_writecache*) ;

__attribute__((used)) static bool writecache_wait_for_writeback(struct dm_writecache *wc)
{
 if (wc->writeback_size) {
  writecache_wait_on_freelist(wc);
  return 1;
 }
 return 0;
}
