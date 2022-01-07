
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache {TYPE_1__* ti; } ;
struct TYPE_2__ {int table; } ;


 char const* dm_device_name (int ) ;
 int dm_table_get_md (int ) ;

__attribute__((used)) static const char *cache_device_name(struct cache *cache)
{
 return dm_device_name(dm_table_get_md(cache->ti->table));
}
