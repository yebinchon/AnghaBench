
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;
struct dm_table {int dummy; } ;
struct dm_ioctl {int flags; } ;


 int DM_QUERY_INACTIVE_TABLE_FLAG ;
 struct dm_table* dm_get_inactive_table (struct mapped_device*,int*) ;
 struct dm_table* dm_get_live_table (struct mapped_device*,int*) ;

__attribute__((used)) static struct dm_table *dm_get_live_or_inactive_table(struct mapped_device *md,
            struct dm_ioctl *param,
            int *srcu_idx)
{
 return (param->flags & DM_QUERY_INACTIVE_TABLE_FLAG) ?
  dm_get_inactive_table(md, srcu_idx) : dm_get_live_table(md, srcu_idx);
}
