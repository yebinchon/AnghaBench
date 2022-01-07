
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int amdgpu_ras_debugfs_remove_all (struct amdgpu_device*) ;
 int amdgpu_ras_sysfs_remove_all (struct amdgpu_device*) ;

__attribute__((used)) static int amdgpu_ras_fs_fini(struct amdgpu_device *adev)
{
 amdgpu_ras_debugfs_remove_all(adev);
 amdgpu_ras_sysfs_remove_all(adev);
 return 0;
}
