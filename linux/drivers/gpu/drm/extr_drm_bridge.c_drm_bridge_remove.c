
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_bridge {int list; } ;


 int bridge_lock ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void drm_bridge_remove(struct drm_bridge *bridge)
{
 mutex_lock(&bridge_lock);
 list_del_init(&bridge->list);
 mutex_unlock(&bridge_lock);
}
