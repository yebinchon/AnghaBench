
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct drm_i915_mocs_table {TYPE_1__* table; } ;
struct TYPE_2__ {int l3cc_value; scalar_t__ used; } ;


 size_t I915_MOCS_PTE ;

__attribute__((used)) static u16 get_entry_l3cc(const struct drm_i915_mocs_table *table,
     unsigned int index)
{
 if (table->table[index].used)
  return table->table[index].l3cc_value;

 return table->table[I915_MOCS_PTE].l3cc_value;
}
