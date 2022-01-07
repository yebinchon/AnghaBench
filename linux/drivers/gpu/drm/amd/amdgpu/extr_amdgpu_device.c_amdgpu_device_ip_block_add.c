
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_ip_block_version {TYPE_1__* funcs; } ;
struct amdgpu_device {int num_ip_blocks; TYPE_2__* ip_blocks; } ;
struct TYPE_4__ {struct amdgpu_ip_block_version const* version; } ;
struct TYPE_3__ {int name; } ;


 int DRM_INFO (char*,int ,int ) ;
 int EINVAL ;

int amdgpu_device_ip_block_add(struct amdgpu_device *adev,
          const struct amdgpu_ip_block_version *ip_block_version)
{
 if (!ip_block_version)
  return -EINVAL;

 DRM_INFO("add ip block number %d <%s>\n", adev->num_ip_blocks,
    ip_block_version->funcs->name);

 adev->ip_blocks[adev->num_ip_blocks++].version = ip_block_version;

 return 0;
}
