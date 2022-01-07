
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache {TYPE_1__* ti; } ;
typedef enum cache_metadata_mode { ____Placeholder_cache_metadata_mode } cache_metadata_mode ;
struct TYPE_2__ {int table; } ;


 int DMINFO (char*,int ,char const*) ;
 int cache_device_name (struct cache*) ;
 int dm_table_event (int ) ;

__attribute__((used)) static void notify_mode_switch(struct cache *cache, enum cache_metadata_mode mode)
{
 const char *descs[] = {
  "write",
  "read-only",
  "fail"
 };

 dm_table_event(cache->ti->table);
 DMINFO("%s: switching cache to %s mode",
        cache_device_name(cache), descs[(int)mode]);
}
