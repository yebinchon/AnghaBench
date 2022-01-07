
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int status; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;



__attribute__((used)) static enum drm_connector_status
exynos_dsi_detect(struct drm_connector *connector, bool force)
{
 return connector->status;
}
