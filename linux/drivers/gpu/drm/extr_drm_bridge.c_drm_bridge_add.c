
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_bridge {int list; } ;


 int bridge_list ;
 int bridge_lock ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void drm_bridge_add(struct drm_bridge *bridge)
{
 mutex_lock(&bridge_lock);
 list_add_tail(&bridge->list, &bridge_list);
 mutex_unlock(&bridge_lock);
}
