
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_minor {int debugfs_root; } ;
struct amdgpu_ras {int dir; int ent; } ;
struct amdgpu_device {TYPE_1__* ddev; } ;
struct TYPE_2__ {struct drm_minor* primary; } ;


 int S_IRUGO ;
 int S_IWUGO ;
 int amdgpu_ras_debugfs_ctrl_ops ;
 struct amdgpu_ras* amdgpu_ras_get_context (struct amdgpu_device*) ;
 int debugfs_create_dir (char*,int ) ;
 int debugfs_create_file (char*,int,int ,struct amdgpu_device*,int *) ;

__attribute__((used)) static void amdgpu_ras_debugfs_create_ctrl_node(struct amdgpu_device *adev)
{
 struct amdgpu_ras *con = amdgpu_ras_get_context(adev);
 struct drm_minor *minor = adev->ddev->primary;

 con->dir = debugfs_create_dir("ras", minor->debugfs_root);
 con->ent = debugfs_create_file("ras_ctrl", S_IWUGO | S_IRUGO, con->dir,
           adev, &amdgpu_ras_debugfs_ctrl_ops);
}
