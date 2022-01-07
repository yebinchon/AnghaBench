
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_hash_table {int * buckets; } ;
struct entry {int hash_next; } ;



__attribute__((used)) static void __h_unlink(struct smq_hash_table *ht, unsigned h,
         struct entry *e, struct entry *prev)
{
 if (prev)
  prev->hash_next = e->hash_next;
 else
  ht->buckets[h] = e->hash_next;
}
