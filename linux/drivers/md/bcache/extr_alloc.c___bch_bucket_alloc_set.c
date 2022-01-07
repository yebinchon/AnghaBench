
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cache_set {int caches_loaded; struct cache** cache_by_alloc; int bucket_lock; int flags; } ;
struct TYPE_4__ {int nr_this_dev; } ;
struct cache {TYPE_2__ sb; TYPE_1__* buckets; } ;
struct bkey {int * ptr; } ;
struct TYPE_3__ {int gen; } ;


 int BUG_ON (int) ;
 int CACHE_SET_IO_DISABLE ;
 int MAKE_PTR (int ,int ,int ) ;
 int MAX_CACHES_PER_SET ;
 int SET_KEY_PTRS (struct bkey*,int) ;
 long bch_bucket_alloc (struct cache*,unsigned int,int) ;
 int bch_bucket_free (struct cache_set*,struct bkey*) ;
 int bkey_init (struct bkey*) ;
 int bkey_put (struct cache_set*,struct bkey*) ;
 int bucket_to_sector (struct cache_set*,long) ;
 int lockdep_assert_held (int *) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

int __bch_bucket_alloc_set(struct cache_set *c, unsigned int reserve,
      struct bkey *k, int n, bool wait)
{
 int i;


 if (unlikely(test_bit(CACHE_SET_IO_DISABLE, &c->flags)))
  return -1;

 lockdep_assert_held(&c->bucket_lock);
 BUG_ON(!n || n > c->caches_loaded || n > MAX_CACHES_PER_SET);

 bkey_init(k);



 for (i = 0; i < n; i++) {
  struct cache *ca = c->cache_by_alloc[i];
  long b = bch_bucket_alloc(ca, reserve, wait);

  if (b == -1)
   goto err;

  k->ptr[i] = MAKE_PTR(ca->buckets[b].gen,
    bucket_to_sector(c, b),
    ca->sb.nr_this_dev);

  SET_KEY_PTRS(k, i + 1);
 }

 return 0;
err:
 bch_bucket_free(c, k);
 bkey_put(c, k);
 return -1;
}
