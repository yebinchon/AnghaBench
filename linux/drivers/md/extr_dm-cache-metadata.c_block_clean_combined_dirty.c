
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int root; int info; } ;
typedef int dm_oblock_t ;
typedef int dm_cblock_t ;
typedef int __le64 ;


 unsigned int M_DIRTY ;
 unsigned int M_VALID ;
 int dm_array_get_value (int *,int ,int ,int *) ;
 int from_cblock (int ) ;
 int unpack_value (int ,int *,unsigned int*) ;

__attribute__((used)) static int block_clean_combined_dirty(struct dm_cache_metadata *cmd, dm_cblock_t b,
          bool *result)
{
 int r;
 __le64 value;
 dm_oblock_t ob;
 unsigned flags;

 r = dm_array_get_value(&cmd->info, cmd->root, from_cblock(b), &value);
 if (r)
  return r;

 unpack_value(value, &ob, &flags);
 *result = !((flags & M_VALID) && (flags & M_DIRTY));

 return 0;
}
