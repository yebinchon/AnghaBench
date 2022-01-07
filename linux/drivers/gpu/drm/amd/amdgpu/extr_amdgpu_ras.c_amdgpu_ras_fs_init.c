
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int amdgpu_ras_debugfs_create_ctrl_node (struct amdgpu_device*) ;
 int amdgpu_ras_sysfs_create_feature_node (struct amdgpu_device*) ;

__attribute__((used)) static int amdgpu_ras_fs_init(struct amdgpu_device *adev)
{
 amdgpu_ras_sysfs_create_feature_node(adev);
 amdgpu_ras_debugfs_create_ctrl_node(adev);

 return 0;
}
