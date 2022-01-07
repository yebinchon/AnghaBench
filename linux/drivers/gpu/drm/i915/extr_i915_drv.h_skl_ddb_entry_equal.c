
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_ddb_entry {scalar_t__ start; scalar_t__ end; } ;



__attribute__((used)) static inline bool skl_ddb_entry_equal(const struct skl_ddb_entry *e1,
           const struct skl_ddb_entry *e2)
{
 if (e1->start == e2->start && e1->end == e2->end)
  return 1;

 return 0;
}
