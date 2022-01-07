
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;
struct cache {TYPE_1__ features; int cmd; } ;
typedef enum cache_metadata_mode { ____Placeholder_cache_metadata_mode } cache_metadata_mode ;





 int DMERR (char*,int ) ;
 int cache_device_name (struct cache*) ;
 scalar_t__ dm_cache_metadata_needs_check (int ,int*) ;
 int dm_cache_metadata_set_read_only (int ) ;
 int dm_cache_metadata_set_read_write (int ) ;
 int get_cache_mode (struct cache*) ;
 int notify_mode_switch (struct cache*,int) ;

__attribute__((used)) static void set_cache_mode(struct cache *cache, enum cache_metadata_mode new_mode)
{
 bool needs_check;
 enum cache_metadata_mode old_mode = get_cache_mode(cache);

 if (dm_cache_metadata_needs_check(cache->cmd, &needs_check)) {
  DMERR("%s: unable to read needs_check flag, setting failure mode.",
        cache_device_name(cache));
  new_mode = 130;
 }

 if (new_mode == 128 && needs_check) {
  DMERR("%s: unable to switch cache to write mode until repaired.",
        cache_device_name(cache));
  if (old_mode != new_mode)
   new_mode = old_mode;
  else
   new_mode = 129;
 }


 if (old_mode == 130)
  new_mode = 130;

 switch (new_mode) {
 case 130:
 case 129:
  dm_cache_metadata_set_read_only(cache->cmd);
  break;

 case 128:
  dm_cache_metadata_set_read_write(cache->cmd);
  break;
 }

 cache->features.mode = new_mode;

 if (new_mode != old_mode)
  notify_mode_switch(cache, new_mode);
}
