
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kingdisplay_panel {int base; } ;


 int drm_panel_remove (int *) ;

__attribute__((used)) static void kingdisplay_panel_del(struct kingdisplay_panel *kingdisplay)
{
 drm_panel_remove(&kingdisplay->base);
}
