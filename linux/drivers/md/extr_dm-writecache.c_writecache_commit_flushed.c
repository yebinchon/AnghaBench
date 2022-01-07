
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_writecache {int dummy; } ;


 scalar_t__ WC_MODE_PMEM (struct dm_writecache*) ;
 int ssd_commit_flushed (struct dm_writecache*) ;
 int wmb () ;

__attribute__((used)) static void writecache_commit_flushed(struct dm_writecache *wc)
{
 if (WC_MODE_PMEM(wc))
  wmb();
 else
  ssd_commit_flushed(wc);
}
