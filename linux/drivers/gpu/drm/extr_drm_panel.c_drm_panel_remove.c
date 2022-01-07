
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_panel {int list; } ;


 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int panel_lock ;

void drm_panel_remove(struct drm_panel *panel)
{
 mutex_lock(&panel_lock);
 list_del_init(&panel->list);
 mutex_unlock(&panel_lock);
}
