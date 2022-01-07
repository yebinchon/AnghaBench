
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_gid_table_entry {int kref; } ;


 int free_gid_entry ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void put_gid_entry_locked(struct ib_gid_table_entry *entry)
{
 kref_put(&entry->kref, free_gid_entry);
}
