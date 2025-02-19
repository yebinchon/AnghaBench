
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cblock_range {int dummy; } ;
struct cache {int dummy; } ;


 int DMERR (char*,int ) ;
 int EPERM ;
 int cache_device_name (struct cache*) ;
 int parse_cblock_range (struct cache*,char const*,struct cblock_range*) ;
 int passthrough_mode (struct cache*) ;
 int request_invalidation (struct cache*,struct cblock_range*) ;
 int validate_cblock_range (struct cache*,struct cblock_range*) ;

__attribute__((used)) static int process_invalidate_cblocks_message(struct cache *cache, unsigned count,
           const char **cblock_ranges)
{
 int r = 0;
 unsigned i;
 struct cblock_range range;

 if (!passthrough_mode(cache)) {
  DMERR("%s: cache has to be in passthrough mode for invalidation",
        cache_device_name(cache));
  return -EPERM;
 }

 for (i = 0; i < count; i++) {
  r = parse_cblock_range(cache, cblock_ranges[i], &range);
  if (r)
   break;

  r = validate_cblock_range(cache, &range);
  if (r)
   break;




  r = request_invalidation(cache, &range);
  if (r)
   break;
 }

 return r;
}
