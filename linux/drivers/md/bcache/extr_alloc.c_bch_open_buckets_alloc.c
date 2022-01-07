
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct open_bucket {int list; } ;
struct cache_set {int data_buckets; int data_bucket_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_OPEN_BUCKETS ;
 struct open_bucket* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int spin_lock_init (int *) ;

int bch_open_buckets_alloc(struct cache_set *c)
{
 int i;

 spin_lock_init(&c->data_bucket_lock);

 for (i = 0; i < MAX_OPEN_BUCKETS; i++) {
  struct open_bucket *b = kzalloc(sizeof(*b), GFP_KERNEL);

  if (!b)
   return -ENOMEM;

  list_add(&b->list, &c->data_buckets);
 }

 return 0;
}
