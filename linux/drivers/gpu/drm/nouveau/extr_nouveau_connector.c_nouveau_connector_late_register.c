
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;


 int nouveau_backlight_init (struct drm_connector*) ;

__attribute__((used)) static int
nouveau_connector_late_register(struct drm_connector *connector)
{
 int ret;

 ret = nouveau_backlight_init(connector);

 return ret;
}
