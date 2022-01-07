
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int version; } ;



__attribute__((used)) static bool separate_dirty_bits(struct dm_cache_metadata *cmd)
{
 return cmd->version >= 2;
}
