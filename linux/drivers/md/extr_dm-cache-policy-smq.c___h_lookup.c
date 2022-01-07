
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_hash_table {int dummy; } ;
struct entry {scalar_t__ oblock; } ;
typedef scalar_t__ dm_oblock_t ;


 struct entry* h_head (struct smq_hash_table*,unsigned int) ;
 struct entry* h_next (struct smq_hash_table*,struct entry*) ;

__attribute__((used)) static struct entry *__h_lookup(struct smq_hash_table *ht, unsigned h, dm_oblock_t oblock,
    struct entry **prev)
{
 struct entry *e;

 *prev = ((void*)0);
 for (e = h_head(ht, h); e; e = h_next(ht, e)) {
  if (e->oblock == oblock)
   return e;

  *prev = e;
 }

 return ((void*)0);
}
