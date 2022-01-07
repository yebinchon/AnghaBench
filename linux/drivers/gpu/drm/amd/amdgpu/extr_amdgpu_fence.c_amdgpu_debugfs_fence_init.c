
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int amdgpu_debugfs_add_files (struct amdgpu_device*,int ,int) ;
 int amdgpu_debugfs_fence_list ;
 int amdgpu_debugfs_fence_list_sriov ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;

int amdgpu_debugfs_fence_init(struct amdgpu_device *adev)
{





 return 0;

}
