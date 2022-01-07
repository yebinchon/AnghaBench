
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mga_connector {int i2c; } ;
struct drm_connector {int dummy; } ;


 int drm_connector_cleanup (struct drm_connector*) ;
 int kfree (struct drm_connector*) ;
 int mgag200_i2c_destroy (int ) ;
 struct mga_connector* to_mga_connector (struct drm_connector*) ;

__attribute__((used)) static void mga_connector_destroy(struct drm_connector *connector)
{
 struct mga_connector *mga_connector = to_mga_connector(connector);
 mgag200_i2c_destroy(mga_connector->i2c);
 drm_connector_cleanup(connector);
 kfree(connector);
}
