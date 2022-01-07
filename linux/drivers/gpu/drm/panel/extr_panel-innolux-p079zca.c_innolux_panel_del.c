
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct innolux_panel {int base; } ;


 int drm_panel_remove (int *) ;

__attribute__((used)) static void innolux_panel_del(struct innolux_panel *innolux)
{
 drm_panel_remove(&innolux->base);
}
