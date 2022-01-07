
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_hash_table {int hash_bits; } ;
struct entry {int oblock; } ;


 struct entry* __h_lookup (struct smq_hash_table*,unsigned int,int ,struct entry**) ;
 int __h_unlink (struct smq_hash_table*,unsigned int,struct entry*,struct entry*) ;
 int from_oblock (int ) ;
 unsigned int hash_64 (int ,int ) ;

__attribute__((used)) static void h_remove(struct smq_hash_table *ht, struct entry *e)
{
 unsigned h = hash_64(from_oblock(e->oblock), ht->hash_bits);
 struct entry *prev;





 e = __h_lookup(ht, h, e->oblock, &prev);
 if (e)
  __h_unlink(ht, h, e, prev);
}
