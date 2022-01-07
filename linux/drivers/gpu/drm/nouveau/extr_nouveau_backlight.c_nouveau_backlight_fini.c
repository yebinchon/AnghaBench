
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_connector {struct nouveau_backlight* backlight; } ;
struct nouveau_backlight {scalar_t__ id; int dev; } ;
struct drm_connector {int dummy; } ;


 int backlight_device_unregister (int ) ;
 int bl_ida ;
 int ida_simple_remove (int *,scalar_t__) ;
 int kfree (struct nouveau_backlight*) ;
 struct nouveau_connector* nouveau_connector (struct drm_connector*) ;

void
nouveau_backlight_fini(struct drm_connector *connector)
{
 struct nouveau_connector *nv_conn = nouveau_connector(connector);
 struct nouveau_backlight *bl = nv_conn->backlight;

 if (!bl)
  return;

 if (bl->id >= 0)
  ida_simple_remove(&bl_ida, bl->id);

 backlight_device_unregister(bl->dev);
 nv_conn->backlight = ((void*)0);
 kfree(bl);
}
