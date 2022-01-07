
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_connector {int dummy; } ;
struct mga_connector {TYPE_1__* i2c; struct drm_connector base; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int adapter; } ;


 int DRM_ERROR (char*) ;
 int DRM_MODE_CONNECTOR_VGA ;
 int GFP_KERNEL ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init_with_ddc (struct drm_device*,struct drm_connector*,int *,int ,int *) ;
 int drm_connector_register (struct drm_connector*) ;
 struct mga_connector* kzalloc (int,int ) ;
 int mga_vga_connector_funcs ;
 int mga_vga_connector_helper_funcs ;
 TYPE_1__* mgag200_i2c_create (struct drm_device*) ;

__attribute__((used)) static struct drm_connector *mga_vga_init(struct drm_device *dev)
{
 struct drm_connector *connector;
 struct mga_connector *mga_connector;

 mga_connector = kzalloc(sizeof(struct mga_connector), GFP_KERNEL);
 if (!mga_connector)
  return ((void*)0);

 connector = &mga_connector->base;
 mga_connector->i2c = mgag200_i2c_create(dev);
 if (!mga_connector->i2c)
  DRM_ERROR("failed to add ddc bus\n");

 drm_connector_init_with_ddc(dev, connector,
        &mga_vga_connector_funcs,
        DRM_MODE_CONNECTOR_VGA,
        &mga_connector->i2c->adapter);

 drm_connector_helper_add(connector, &mga_vga_connector_helper_funcs);

 drm_connector_register(connector);

 return connector;
}
