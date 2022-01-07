
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_set {int bucket_bits; } ;
typedef int sector_t ;



__attribute__((used)) static inline sector_t bucket_to_sector(struct cache_set *c, size_t b)
{
 return ((sector_t) b) << c->bucket_bits;
}
