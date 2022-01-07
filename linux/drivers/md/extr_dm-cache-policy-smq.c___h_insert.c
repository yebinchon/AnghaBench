
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_hash_table {int es; int * buckets; } ;
struct entry {int hash_next; } ;


 int to_index (int ,struct entry*) ;

__attribute__((used)) static void __h_insert(struct smq_hash_table *ht, unsigned bucket, struct entry *e)
{
 e->hash_next = ht->buckets[bucket];
 ht->buckets[bucket] = to_index(ht->es, e);
}
