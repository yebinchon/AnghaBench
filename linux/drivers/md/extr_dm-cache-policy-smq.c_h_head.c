
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_hash_table {int * buckets; int es; } ;
struct entry {int dummy; } ;


 struct entry* to_entry (int ,int ) ;

__attribute__((used)) static struct entry *h_head(struct smq_hash_table *ht, unsigned bucket)
{
 return to_entry(ht->es, ht->buckets[bucket]);
}
