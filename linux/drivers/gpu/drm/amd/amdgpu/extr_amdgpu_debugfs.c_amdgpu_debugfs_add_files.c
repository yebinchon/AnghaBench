
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_info_list {int dummy; } ;
struct amdgpu_device {unsigned int debugfs_count; TYPE_2__* ddev; TYPE_1__* debugfs; } ;
struct TYPE_6__ {int debugfs_root; } ;
struct TYPE_5__ {TYPE_3__* primary; } ;
struct TYPE_4__ {unsigned int num_files; struct drm_info_list const* files; } ;


 unsigned int AMDGPU_DEBUGFS_MAX_COMPONENTS ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 int drm_debugfs_create_files (struct drm_info_list const*,unsigned int,int ,TYPE_3__*) ;

int amdgpu_debugfs_add_files(struct amdgpu_device *adev,
        const struct drm_info_list *files,
        unsigned nfiles)
{
 unsigned i;

 for (i = 0; i < adev->debugfs_count; i++) {
  if (adev->debugfs[i].files == files) {

   return 0;
  }
 }

 i = adev->debugfs_count + 1;
 if (i > AMDGPU_DEBUGFS_MAX_COMPONENTS) {
  DRM_ERROR("Reached maximum number of debugfs components.\n");
  DRM_ERROR("Report so we increase "
     "AMDGPU_DEBUGFS_MAX_COMPONENTS.\n");
  return -EINVAL;
 }
 adev->debugfs[adev->debugfs_count].files = files;
 adev->debugfs[adev->debugfs_count].num_files = nfiles;
 adev->debugfs_count = i;





 return 0;
}
