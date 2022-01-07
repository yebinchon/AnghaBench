
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_ddb_entry {scalar_t__ start; scalar_t__ end; } ;



__attribute__((used)) static inline bool skl_ddb_entries_overlap(const struct skl_ddb_entry *a,
        const struct skl_ddb_entry *b)
{
 return a->start < b->end && b->start < a->end;
}
