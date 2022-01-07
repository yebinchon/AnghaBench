
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int root_lock; int bm; scalar_t__ fail_io; } ;


 scalar_t__ dm_bm_is_read_only (int ) ;
 int down_write (int *) ;
 int up_write (int *) ;

__attribute__((used)) static bool cmd_write_lock(struct dm_cache_metadata *cmd)
{
 down_write(&cmd->root_lock);
 if (cmd->fail_io || dm_bm_is_read_only(cmd->bm)) {
  up_write(&cmd->root_lock);
  return 0;
 }
 return 1;
}
