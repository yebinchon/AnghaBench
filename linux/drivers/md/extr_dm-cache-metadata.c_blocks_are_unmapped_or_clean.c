
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int dummy; } ;
typedef int dm_cblock_t ;


 int blocks_are_clean_combined_dirty (struct dm_cache_metadata*,int ,int ,int*) ;
 int blocks_are_clean_separate_dirty (struct dm_cache_metadata*,int ,int ,int*) ;
 scalar_t__ separate_dirty_bits (struct dm_cache_metadata*) ;

__attribute__((used)) static int blocks_are_unmapped_or_clean(struct dm_cache_metadata *cmd,
     dm_cblock_t begin, dm_cblock_t end,
     bool *result)
{
 if (separate_dirty_bits(cmd))
  return blocks_are_clean_separate_dirty(cmd, begin, end, result);
 else
  return blocks_are_clean_combined_dirty(cmd, begin, end, result);
}
