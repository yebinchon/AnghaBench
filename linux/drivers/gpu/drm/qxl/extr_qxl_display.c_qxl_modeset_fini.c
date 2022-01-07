
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_device {int ddev; } ;


 int drm_mode_config_cleanup (int *) ;
 int qxl_destroy_monitors_object (struct qxl_device*) ;

void qxl_modeset_fini(struct qxl_device *qdev)
{
 qxl_destroy_monitors_object(qdev);
 drm_mode_config_cleanup(&qdev->ddev);
}
