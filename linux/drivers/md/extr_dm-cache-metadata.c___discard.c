
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int changed; } ;
typedef int dm_dblock_t ;


 int __clear_discard (struct dm_cache_metadata*,int ) ;
 int __set_discard (struct dm_cache_metadata*,int ) ;
 int stub1 (struct dm_cache_metadata*,int ) ;

__attribute__((used)) static int __discard(struct dm_cache_metadata *cmd,
       dm_dblock_t dblock, bool discard)
{
 int r;

 r = (discard ? __set_discard : __clear_discard)(cmd, dblock);
 if (r)
  return r;

 cmd->changed = 1;
 return 0;
}
