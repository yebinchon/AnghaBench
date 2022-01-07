
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_panel {int * drm; int * connector; } ;



void drm_panel_detach(struct drm_panel *panel)
{
 panel->connector = ((void*)0);
 panel->drm = ((void*)0);
}
