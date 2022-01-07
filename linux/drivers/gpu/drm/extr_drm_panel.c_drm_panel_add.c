
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_panel {int list; } ;


 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int panel_list ;
 int panel_lock ;

int drm_panel_add(struct drm_panel *panel)
{
 mutex_lock(&panel_lock);
 list_add_tail(&panel->list, &panel_list);
 mutex_unlock(&panel_lock);

 return 0;
}
