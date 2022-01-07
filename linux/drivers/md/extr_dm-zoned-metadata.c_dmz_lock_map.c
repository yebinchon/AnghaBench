
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_metadata {int map_lock; } ;


 int mutex_lock (int *) ;

void dmz_lock_map(struct dmz_metadata *zmd)
{
 mutex_lock(&zmd->map_lock);
}
