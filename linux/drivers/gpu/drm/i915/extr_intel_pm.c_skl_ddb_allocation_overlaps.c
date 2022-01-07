
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_ddb_entry {int dummy; } ;


 scalar_t__ skl_ddb_entries_overlap (struct skl_ddb_entry const*,struct skl_ddb_entry const*) ;

bool skl_ddb_allocation_overlaps(const struct skl_ddb_entry *ddb,
     const struct skl_ddb_entry *entries,
     int num_entries, int ignore_idx)
{
 int i;

 for (i = 0; i < num_entries; i++) {
  if (i != ignore_idx &&
      skl_ddb_entries_overlap(ddb, &entries[i]))
   return 1;
 }

 return 0;
}
