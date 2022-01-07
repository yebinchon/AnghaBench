
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_gid_table {int default_gid_indices; } ;


 int BIT (unsigned int) ;

__attribute__((used)) static bool is_gid_index_default(const struct ib_gid_table *table,
     unsigned int index)
{
 return index < 32 && (BIT(index) & table->default_gid_indices);
}
