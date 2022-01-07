
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_table_bucket {int lock; int head; } ;
struct clone {struct hash_table_bucket* ht; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HASH_TABLE_BITS ;
 int INIT_HLIST_HEAD (int *) ;
 struct hash_table_bucket* kvmalloc (unsigned int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int hash_table_init(struct clone *clone)
{
 unsigned int i, sz;
 struct hash_table_bucket *bucket;

 sz = 1 << HASH_TABLE_BITS;

 clone->ht = kvmalloc(sz * sizeof(struct hash_table_bucket), GFP_KERNEL);
 if (!clone->ht)
  return -ENOMEM;

 for (i = 0; i < sz; i++) {
  bucket = clone->ht + i;

  INIT_HLIST_HEAD(&bucket->head);
  spin_lock_init(&bucket->lock);
 }

 return 0;
}
