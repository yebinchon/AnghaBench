
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_set {int dummy; } ;
struct bkey {int dummy; } ;


 int PTR_OFFSET (struct bkey const*,unsigned int) ;
 size_t sector_to_bucket (struct cache_set*,int ) ;

__attribute__((used)) static inline size_t PTR_BUCKET_NR(struct cache_set *c,
       const struct bkey *k,
       unsigned int ptr)
{
 return sector_to_bucket(c, PTR_OFFSET(k, ptr));
}
