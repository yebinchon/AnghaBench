
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_set {int dummy; } ;
struct bkey {int dummy; } ;


 scalar_t__ MAX_CACHES_PER_SET ;
 scalar_t__ PTR_CACHE (struct cache_set*,struct bkey const*,unsigned int) ;
 scalar_t__ PTR_DEV (struct bkey const*,unsigned int) ;

__attribute__((used)) static inline bool ptr_available(struct cache_set *c, const struct bkey *k,
     unsigned int i)
{
 return (PTR_DEV(k, i) < MAX_CACHES_PER_SET) && PTR_CACHE(c, k, i);
}
