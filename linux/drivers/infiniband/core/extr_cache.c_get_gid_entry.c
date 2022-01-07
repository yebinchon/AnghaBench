
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_gid_table_entry {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static void get_gid_entry(struct ib_gid_table_entry *entry)
{
 kref_get(&entry->kref);
}
