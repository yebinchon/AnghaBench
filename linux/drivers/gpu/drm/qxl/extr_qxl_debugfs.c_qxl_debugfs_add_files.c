
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* primary; } ;
struct qxl_device {unsigned int debugfs_count; TYPE_2__ ddev; TYPE_1__* debugfs; } ;
struct drm_info_list {int dummy; } ;
struct TYPE_6__ {int debugfs_root; } ;
struct TYPE_4__ {unsigned int num_files; struct drm_info_list* files; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 unsigned int QXL_DEBUGFS_MAX_COMPONENTS ;
 int drm_debugfs_create_files (struct drm_info_list*,unsigned int,int ,TYPE_3__*) ;

int qxl_debugfs_add_files(struct qxl_device *qdev,
     struct drm_info_list *files,
     unsigned int nfiles)
{
 unsigned int i;

 for (i = 0; i < qdev->debugfs_count; i++) {
  if (qdev->debugfs[i].files == files) {

   return 0;
  }
 }

 i = qdev->debugfs_count + 1;
 if (i > QXL_DEBUGFS_MAX_COMPONENTS) {
  DRM_ERROR("Reached maximum number of debugfs components.\n");
  DRM_ERROR("Report so we increase QXL_DEBUGFS_MAX_COMPONENTS.\n");
  return -EINVAL;
 }
 qdev->debugfs[qdev->debugfs_count].files = files;
 qdev->debugfs[qdev->debugfs_count].num_files = nfiles;
 qdev->debugfs_count = i;





 return 0;
}
