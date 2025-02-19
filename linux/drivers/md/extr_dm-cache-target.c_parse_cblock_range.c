
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct cblock_range {void* begin; void* end; } ;
struct cache {int dummy; } ;


 int DMERR (char*,int ,char const*) ;
 int EINVAL ;
 int cache_device_name (struct cache*) ;
 scalar_t__ from_cblock (void*) ;
 int sscanf (char const*,char*,scalar_t__*,char*,...) ;
 void* to_cblock (scalar_t__) ;

__attribute__((used)) static int parse_cblock_range(struct cache *cache, const char *str,
         struct cblock_range *result)
{
 char dummy;
 uint64_t b, e;
 int r;




 r = sscanf(str, "%llu-%llu%c", &b, &e, &dummy);
 if (r < 0)
  return r;

 if (r == 2) {
  result->begin = to_cblock(b);
  result->end = to_cblock(e);
  return 0;
 }




 r = sscanf(str, "%llu%c", &b, &dummy);
 if (r < 0)
  return r;

 if (r == 1) {
  result->begin = to_cblock(b);
  result->end = to_cblock(from_cblock(result->begin) + 1u);
  return 0;
 }

 DMERR("%s: invalid cblock range '%s'", cache_device_name(cache), str);
 return -EINVAL;
}
