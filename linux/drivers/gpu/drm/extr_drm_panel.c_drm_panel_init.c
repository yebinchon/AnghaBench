
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_panel {int list; } ;


 int INIT_LIST_HEAD (int *) ;

void drm_panel_init(struct drm_panel *panel)
{
 INIT_LIST_HEAD(&panel->list);
}
