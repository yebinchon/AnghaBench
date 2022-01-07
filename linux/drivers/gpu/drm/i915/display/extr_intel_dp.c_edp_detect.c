
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int connector_status_connected ;

__attribute__((used)) static enum drm_connector_status
edp_detect(struct intel_dp *intel_dp)
{
 return connector_status_connected;
}
