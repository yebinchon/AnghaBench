
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_hash_table {int es; } ;
struct entry {int hash_next; } ;


 struct entry* to_entry (int ,int ) ;

__attribute__((used)) static struct entry *h_next(struct smq_hash_table *ht, struct entry *e)
{
 return to_entry(ht->es, e->hash_next);
}
