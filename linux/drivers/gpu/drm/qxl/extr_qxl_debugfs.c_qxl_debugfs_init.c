
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qxl_device {int dummy; } ;
struct drm_minor {int debugfs_root; TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ dev_private; } ;


 int DRM_ERROR (char*) ;
 int QXL_DEBUGFS_ENTRIES ;
 int drm_debugfs_create_files (int ,int ,int ,struct drm_minor*) ;
 int qxl_debugfs_list ;
 int qxl_ttm_debugfs_init (struct qxl_device*) ;

int
qxl_debugfs_init(struct drm_minor *minor)
{
 return 0;
}
