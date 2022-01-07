
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct discard_load_info {scalar_t__ discard_end; scalar_t__ discard_begin; struct cache* cache; } ;
struct cache {int dummy; } ;



__attribute__((used)) static void discard_load_info_init(struct cache *cache,
       struct discard_load_info *li)
{
 li->cache = cache;
 li->discard_begin = li->discard_end = 0;
}
