
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tfp410_connector {struct drm_encoder* encoder; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector {int dummy; } ;


 struct tfp410_connector* to_tfp410_connector (struct drm_connector*) ;

__attribute__((used)) static struct drm_encoder *tfp410_connector_best_encoder(
  struct drm_connector *connector)
{
 struct tfp410_connector *tfp410_connector = to_tfp410_connector(connector);
 return tfp410_connector->encoder;
}
