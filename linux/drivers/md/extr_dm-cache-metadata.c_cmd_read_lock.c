
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int root_lock; scalar_t__ fail_io; } ;


 int down_read (int *) ;
 int up_read (int *) ;

__attribute__((used)) static bool cmd_read_lock(struct dm_cache_metadata *cmd)
{
 down_read(&cmd->root_lock);
 if (cmd->fail_io) {
  up_read(&cmd->root_lock);
  return 0;
 }
 return 1;
}
