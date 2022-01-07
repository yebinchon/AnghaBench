
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct qxl_output {struct drm_encoder enc; } ;
struct drm_connector {int dummy; } ;


 int DRM_DEBUG (char*) ;
 struct qxl_output* drm_connector_to_qxl_output (struct drm_connector*) ;

__attribute__((used)) static struct drm_encoder *qxl_best_encoder(struct drm_connector *connector)
{
 struct qxl_output *qxl_output =
  drm_connector_to_qxl_output(connector);

 DRM_DEBUG("\n");
 return &qxl_output->enc;
}
