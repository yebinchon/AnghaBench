
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int dummy; } ;
typedef enum dm_uevent_type { ____Placeholder_dm_uevent_type } dm_uevent_type ;



__attribute__((used)) static inline void dm_path_uevent(enum dm_uevent_type event_type,
      struct dm_target *ti, const char *path,
      unsigned nr_valid_paths)
{
}
