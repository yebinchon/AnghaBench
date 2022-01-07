
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_hash_table {int hash_bits; } ;
struct entry {int dummy; } ;
typedef int dm_oblock_t ;


 int __h_insert (struct smq_hash_table*,unsigned int,struct entry*) ;
 struct entry* __h_lookup (struct smq_hash_table*,unsigned int,int ,struct entry**) ;
 int __h_unlink (struct smq_hash_table*,unsigned int,struct entry*,struct entry*) ;
 int from_oblock (int ) ;
 unsigned int hash_64 (int ,int ) ;

__attribute__((used)) static struct entry *h_lookup(struct smq_hash_table *ht, dm_oblock_t oblock)
{
 struct entry *e, *prev;
 unsigned h = hash_64(from_oblock(oblock), ht->hash_bits);

 e = __h_lookup(ht, h, oblock, &prev);
 if (e && prev) {




  __h_unlink(ht, h, e, prev);
  __h_insert(ht, h, e);
 }

 return e;
}
