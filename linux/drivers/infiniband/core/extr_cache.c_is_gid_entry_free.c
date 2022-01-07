
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_gid_table_entry {int dummy; } ;



__attribute__((used)) static bool is_gid_entry_free(const struct ib_gid_table_entry *entry)
{
 return !entry;
}
