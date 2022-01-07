
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* value_fn ) (unsigned int,int ,void*) ;
struct dm_btree_value_type {int context; int (* inc ) (int ,int ) ;} ;
struct dm_array_info {struct dm_btree_value_type value_type; } ;
struct array_block {int nr_entries; int max_entries; } ;


 int BUG_ON (int) ;
 int cpu_to_le32 (unsigned int) ;
 int element_at (struct dm_array_info*,struct array_block*,unsigned int) ;
 unsigned int le32_to_cpu (int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int populate_ablock_with_values(struct dm_array_info *info, struct array_block *ab,
           value_fn fn, void *context, unsigned base, unsigned new_nr)
{
 int r;
 unsigned i;
 struct dm_btree_value_type *vt = &info->value_type;

 BUG_ON(le32_to_cpu(ab->nr_entries));
 BUG_ON(new_nr > le32_to_cpu(ab->max_entries));

 for (i = 0; i < new_nr; i++) {
  r = fn(base + i, element_at(info, ab, i), context);
  if (r)
   return r;

  if (vt->inc)
   vt->inc(vt->context, element_at(info, ab, i));
 }

 ab->nr_entries = cpu_to_le32(new_nr);
 return 0;
}
