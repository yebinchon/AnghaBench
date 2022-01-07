
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcache_debug ;
 int debugfs_remove_recursive (int ) ;

void bch_debug_exit(void)
{
 debugfs_remove_recursive(bcache_debug);
}
