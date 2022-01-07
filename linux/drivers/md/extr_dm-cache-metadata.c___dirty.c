
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int changed; int root; int info; } ;
typedef int dm_oblock_t ;
typedef int dm_cblock_t ;
typedef int __le64 ;


 unsigned int M_DIRTY ;
 int __dm_bless_for_disk (int *) ;
 int dm_array_get_value (int *,int ,int ,int *) ;
 int dm_array_set_value (int *,int ,int ,int *,int *) ;
 int from_cblock (int ) ;
 int pack_value (int ,unsigned int) ;
 int unpack_value (int ,int *,unsigned int*) ;

__attribute__((used)) static int __dirty(struct dm_cache_metadata *cmd, dm_cblock_t cblock, bool dirty)
{
 int r;
 unsigned flags;
 dm_oblock_t oblock;
 __le64 value;

 r = dm_array_get_value(&cmd->info, cmd->root, from_cblock(cblock), &value);
 if (r)
  return r;

 unpack_value(value, &oblock, &flags);

 if (((flags & M_DIRTY) && dirty) || (!(flags & M_DIRTY) && !dirty))

  return 0;

 value = pack_value(oblock, (flags & ~M_DIRTY) | (dirty ? M_DIRTY : 0));
 __dm_bless_for_disk(&value);

 r = dm_array_set_value(&cmd->info, cmd->root, from_cblock(cblock),
          &value, &cmd->root);
 if (r)
  return r;

 cmd->changed = 1;
 return 0;

}
