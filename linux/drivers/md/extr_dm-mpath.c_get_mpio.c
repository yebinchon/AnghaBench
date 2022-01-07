
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union map_info {struct dm_mpath_io* ptr; } ;
struct dm_mpath_io {int dummy; } ;



__attribute__((used)) static struct dm_mpath_io *get_mpio(union map_info *info)
{
 return info->ptr;
}
