
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_output {int dummy; } ;
struct drm_connector {int dummy; } ;


 int drm_connector_cleanup (struct drm_connector*) ;
 struct qxl_output* drm_connector_to_qxl_output (struct drm_connector*) ;
 int drm_connector_unregister (struct drm_connector*) ;
 int kfree (struct qxl_output*) ;

__attribute__((used)) static void qxl_conn_destroy(struct drm_connector *connector)
{
 struct qxl_output *qxl_output =
  drm_connector_to_qxl_output(connector);

 drm_connector_unregister(connector);
 drm_connector_cleanup(connector);
 kfree(qxl_output);
}
