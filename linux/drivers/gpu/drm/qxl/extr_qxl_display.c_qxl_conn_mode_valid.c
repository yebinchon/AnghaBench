
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_device {int dummy; } ;
struct drm_display_mode {int vdisplay; int hdisplay; } ;
struct drm_device {struct qxl_device* dev_private; } ;
struct drm_connector {struct drm_device* dev; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int MODE_BAD ;
 int MODE_OK ;
 scalar_t__ qxl_check_mode (struct qxl_device*,int ,int ) ;

__attribute__((used)) static enum drm_mode_status qxl_conn_mode_valid(struct drm_connector *connector,
          struct drm_display_mode *mode)
{
 struct drm_device *ddev = connector->dev;
 struct qxl_device *qdev = ddev->dev_private;

 if (qxl_check_mode(qdev, mode->hdisplay, mode->vdisplay) != 0)
  return MODE_BAD;

 return MODE_OK;
}
