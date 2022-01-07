
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_gid_table_entry {scalar_t__ state; } ;


 scalar_t__ GID_TABLE_ENTRY_VALID ;

__attribute__((used)) static bool is_gid_entry_valid(const struct ib_gid_table_entry *entry)
{
 return entry && entry->state == GID_TABLE_ENTRY_VALID;
}
