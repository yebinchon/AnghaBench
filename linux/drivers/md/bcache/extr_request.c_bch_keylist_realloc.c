
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct keylist {int dummy; } ;
struct jset {int dummy; } ;
struct cache_set {int dummy; } ;


 int ENOMEM ;
 int __bch_keylist_realloc (struct keylist*,unsigned int) ;
 size_t bch_keylist_nkeys (struct keylist*) ;
 int block_bytes (struct cache_set*) ;

__attribute__((used)) static int bch_keylist_realloc(struct keylist *l, unsigned int u64s,
          struct cache_set *c)
{
 size_t oldsize = bch_keylist_nkeys(l);
 size_t newsize = oldsize + u64s;







 if (newsize * sizeof(uint64_t) > block_bytes(c) - sizeof(struct jset))
  return -ENOMEM;

 return __bch_keylist_realloc(l, u64s);
}
