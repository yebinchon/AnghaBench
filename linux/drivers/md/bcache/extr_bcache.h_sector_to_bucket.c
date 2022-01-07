
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_set {size_t bucket_bits; } ;
typedef size_t sector_t ;



__attribute__((used)) static inline size_t sector_to_bucket(struct cache_set *c, sector_t s)
{
 return s >> c->bucket_bits;
}
