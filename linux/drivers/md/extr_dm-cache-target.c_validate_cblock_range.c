
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct cblock_range {int end; int begin; } ;
struct cache {int cache_size; } ;


 int DMERR (char*,int ,scalar_t__,scalar_t__) ;
 int EINVAL ;
 int cache_device_name (struct cache*) ;
 scalar_t__ from_cblock (int ) ;

__attribute__((used)) static int validate_cblock_range(struct cache *cache, struct cblock_range *range)
{
 uint64_t b = from_cblock(range->begin);
 uint64_t e = from_cblock(range->end);
 uint64_t n = from_cblock(cache->cache_size);

 if (b >= n) {
  DMERR("%s: begin cblock out of range: %llu >= %llu",
        cache_device_name(cache), b, n);
  return -EINVAL;
 }

 if (e > n) {
  DMERR("%s: end cblock out of range: %llu > %llu",
        cache_device_name(cache), e, n);
  return -EINVAL;
 }

 if (b >= e) {
  DMERR("%s: invalid cblock range: %llu >= %llu",
        cache_device_name(cache), b, e);
  return -EINVAL;
 }

 return 0;
}
