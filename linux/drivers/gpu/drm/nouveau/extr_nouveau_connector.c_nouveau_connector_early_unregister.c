
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;


 int nouveau_backlight_fini (struct drm_connector*) ;

__attribute__((used)) static void
nouveau_connector_early_unregister(struct drm_connector *connector)
{
 nouveau_backlight_fini(connector);
}
