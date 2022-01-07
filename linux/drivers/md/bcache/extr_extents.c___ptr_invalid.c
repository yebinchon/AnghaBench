
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bucket_size; } ;
struct cache_set {TYPE_1__ sb; } ;
struct TYPE_4__ {size_t first_bucket; size_t nbuckets; } ;
struct cache {TYPE_2__ sb; } ;
struct bkey {int dummy; } ;


 unsigned int KEY_PTRS (struct bkey const*) ;
 scalar_t__ KEY_SIZE (struct bkey const*) ;
 size_t PTR_BUCKET_NR (struct cache_set*,struct bkey const*,unsigned int) ;
 struct cache* PTR_CACHE (struct cache_set*,struct bkey const*,unsigned int) ;
 int PTR_OFFSET (struct bkey const*,unsigned int) ;
 size_t bucket_remainder (struct cache_set*,int ) ;
 scalar_t__ ptr_available (struct cache_set*,struct bkey const*,unsigned int) ;

__attribute__((used)) static bool __ptr_invalid(struct cache_set *c, const struct bkey *k)
{
 unsigned int i;

 for (i = 0; i < KEY_PTRS(k); i++)
  if (ptr_available(c, k, i)) {
   struct cache *ca = PTR_CACHE(c, k, i);
   size_t bucket = PTR_BUCKET_NR(c, k, i);
   size_t r = bucket_remainder(c, PTR_OFFSET(k, i));

   if (KEY_SIZE(k) + r > c->sb.bucket_size ||
       bucket < ca->sb.first_bucket ||
       bucket >= ca->sb.nbuckets)
    return 1;
  }

 return 0;
}
