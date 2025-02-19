
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int changed; int root; int info; } ;
typedef int dm_oblock_t ;
typedef int dm_cblock_t ;
typedef int __le64 ;


 int M_VALID ;
 int __dm_bless_for_disk (int *) ;
 int dm_array_set_value (int *,int ,int ,int *,int *) ;
 int from_cblock (int ) ;
 int pack_value (int ,int ) ;

__attribute__((used)) static int __insert(struct dm_cache_metadata *cmd,
      dm_cblock_t cblock, dm_oblock_t oblock)
{
 int r;
 __le64 value = pack_value(oblock, M_VALID);
 __dm_bless_for_disk(&value);

 r = dm_array_set_value(&cmd->info, cmd->root, from_cblock(cblock),
          &value, &cmd->root);
 if (r)
  return r;

 cmd->changed = 1;
 return 0;
}
