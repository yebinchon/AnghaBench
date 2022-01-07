
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_set {int dummy; } ;
struct bkey {int dummy; } ;


 unsigned int KEY_PTRS (struct bkey*) ;
 int PTR_BUCKET (struct cache_set*,struct bkey*,unsigned int) ;
 int PTR_CACHE (struct cache_set*,struct bkey*,unsigned int) ;
 int __bch_bucket_free (int ,int ) ;

void bch_bucket_free(struct cache_set *c, struct bkey *k)
{
 unsigned int i;

 for (i = 0; i < KEY_PTRS(k); i++)
  __bch_bucket_free(PTR_CACHE(c, k, i),
      PTR_BUCKET(c, k, i));
}
