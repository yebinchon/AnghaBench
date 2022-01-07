
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* context; } ;
struct dm_array_info {TYPE_1__ value_type; } ;
struct array_block {int nr_entries; } ;


 void const* element_at (struct dm_array_info*,struct array_block*,unsigned int) ;
 unsigned int le32_to_cpu (int ) ;

__attribute__((used)) static void on_entries(struct dm_array_info *info, struct array_block *ab,
         void (*fn)(void *, const void *))
{
 unsigned i, nr_entries = le32_to_cpu(ab->nr_entries);

 for (i = 0; i < nr_entries; i++)
  fn(info->value_type.context, element_at(info, ab, i));
}
