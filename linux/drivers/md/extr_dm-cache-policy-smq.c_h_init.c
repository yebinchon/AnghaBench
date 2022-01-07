
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_hash_table {int * buckets; int hash_bits; struct entry_space* es; } ;
struct entry_space {int dummy; } ;


 int ENOMEM ;
 int INDEXER_NULL ;
 int __ffs (unsigned int) ;
 int array_size (unsigned int,int) ;
 int max (unsigned int,unsigned int) ;
 unsigned int roundup_pow_of_two (int ) ;
 int * vmalloc (int ) ;

__attribute__((used)) static int h_init(struct smq_hash_table *ht, struct entry_space *es, unsigned nr_entries)
{
 unsigned i, nr_buckets;

 ht->es = es;
 nr_buckets = roundup_pow_of_two(max(nr_entries / 4u, 16u));
 ht->hash_bits = __ffs(nr_buckets);

 ht->buckets = vmalloc(array_size(nr_buckets, sizeof(*ht->buckets)));
 if (!ht->buckets)
  return -ENOMEM;

 for (i = 0; i < nr_buckets; i++)
  ht->buckets[i] = INDEXER_NULL;

 return 0;
}
