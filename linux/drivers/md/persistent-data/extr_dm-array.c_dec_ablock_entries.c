
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_btree_value_type {scalar_t__ dec; } ;
struct dm_array_info {struct dm_btree_value_type value_type; } ;
struct array_block {int dummy; } ;


 int on_entries (struct dm_array_info*,struct array_block*,scalar_t__) ;

__attribute__((used)) static void dec_ablock_entries(struct dm_array_info *info, struct array_block *ab)
{
 struct dm_btree_value_type *vt = &info->value_type;

 if (vt->dec)
  on_entries(info, ab, vt->dec);
}
