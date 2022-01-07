
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_hash_table {int hash_bits; } ;
struct entry {int oblock; } ;


 int __h_insert (struct smq_hash_table*,unsigned int,struct entry*) ;
 int from_oblock (int ) ;
 unsigned int hash_64 (int ,int ) ;

__attribute__((used)) static void h_insert(struct smq_hash_table *ht, struct entry *e)
{
 unsigned h = hash_64(from_oblock(e->oblock), ht->hash_bits);
 __h_insert(ht, h, e);
}
