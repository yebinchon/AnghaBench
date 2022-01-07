
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int dummy; } ;
typedef scalar_t__ dm_cblock_t ;


 int DMERR (char*,...) ;
 int block_clean_combined_dirty (struct dm_cache_metadata*,scalar_t__,int*) ;
 scalar_t__ from_cblock (scalar_t__) ;
 scalar_t__ to_cblock (scalar_t__) ;

__attribute__((used)) static int blocks_are_clean_combined_dirty(struct dm_cache_metadata *cmd,
        dm_cblock_t begin, dm_cblock_t end,
        bool *result)
{
 int r;
 *result = 1;

 while (begin != end) {
  r = block_clean_combined_dirty(cmd, begin, result);
  if (r) {
   DMERR("block_clean_combined_dirty failed");
   return r;
  }

  if (!*result) {
   DMERR("cache block %llu is dirty",
         (unsigned long long) from_cblock(begin));
   return 0;
  }

  begin = to_cblock(from_cblock(begin) + 1);
 }

 return 0;
}
