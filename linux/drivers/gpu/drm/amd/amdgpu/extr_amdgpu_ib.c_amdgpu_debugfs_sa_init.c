
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int amdgpu_debugfs_add_files (struct amdgpu_device*,int ,int) ;
 int amdgpu_debugfs_sa_list ;

__attribute__((used)) static int amdgpu_debugfs_sa_init(struct amdgpu_device *adev)
{



 return 0;

}
