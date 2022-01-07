
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct dm_btree_value_type {int context; int (* dec ) (int ,int ) ;} ;
struct dm_array_info {struct dm_btree_value_type value_type; } ;
struct array_block {int nr_entries; int max_entries; } ;


 int BUG_ON (int) ;
 int cpu_to_le32 (unsigned int) ;
 int element_at (struct dm_array_info*,struct array_block*,unsigned int) ;
 unsigned int le32_to_cpu (int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void trim_ablock(struct dm_array_info *info, struct array_block *ab,
   unsigned new_nr)
{
 unsigned i;
 uint32_t nr_entries;
 struct dm_btree_value_type *vt = &info->value_type;

 BUG_ON(new_nr > le32_to_cpu(ab->max_entries));
 BUG_ON(new_nr > le32_to_cpu(ab->nr_entries));

 nr_entries = le32_to_cpu(ab->nr_entries);
 for (i = nr_entries; i > new_nr; i--)
  if (vt->dec)
   vt->dec(vt->context, element_at(info, ab, i - 1));
 ab->nr_entries = cpu_to_le32(new_nr);
}
