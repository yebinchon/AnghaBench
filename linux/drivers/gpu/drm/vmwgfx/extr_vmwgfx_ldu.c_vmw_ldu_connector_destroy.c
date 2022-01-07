
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;


 int vmw_connector_to_ldu (struct drm_connector*) ;
 int vmw_ldu_destroy (int ) ;

__attribute__((used)) static void vmw_ldu_connector_destroy(struct drm_connector *connector)
{
 vmw_ldu_destroy(vmw_connector_to_ldu(connector));
}
