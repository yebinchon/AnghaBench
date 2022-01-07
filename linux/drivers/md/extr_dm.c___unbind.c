
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int map; } ;
struct dm_table {int dummy; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int dm_sync_table (struct mapped_device*) ;
 int dm_table_event_callback (struct dm_table*,int *,int *) ;
 struct dm_table* rcu_dereference_protected (int ,int) ;

__attribute__((used)) static struct dm_table *__unbind(struct mapped_device *md)
{
 struct dm_table *map = rcu_dereference_protected(md->map, 1);

 if (!map)
  return ((void*)0);

 dm_table_event_callback(map, ((void*)0), ((void*)0));
 RCU_INIT_POINTER(md->map, ((void*)0));
 dm_sync_table(md);

 return map;
}
