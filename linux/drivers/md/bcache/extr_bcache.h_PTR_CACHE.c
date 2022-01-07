
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_set {struct cache** cache; } ;
struct cache {int dummy; } ;
struct bkey {int dummy; } ;


 size_t PTR_DEV (struct bkey const*,unsigned int) ;

__attribute__((used)) static inline struct cache *PTR_CACHE(struct cache_set *c,
          const struct bkey *k,
          unsigned int ptr)
{
 return c->cache[PTR_DEV(k, ptr)];
}
