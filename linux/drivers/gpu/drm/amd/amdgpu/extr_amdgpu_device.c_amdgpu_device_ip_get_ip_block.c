
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_ip_block {TYPE_1__* version; } ;
struct amdgpu_device {int num_ip_blocks; struct amdgpu_ip_block* ip_blocks; } ;
typedef enum amd_ip_block_type { ____Placeholder_amd_ip_block_type } amd_ip_block_type ;
struct TYPE_2__ {int type; } ;



struct amdgpu_ip_block *
amdgpu_device_ip_get_ip_block(struct amdgpu_device *adev,
         enum amd_ip_block_type type)
{
 int i;

 for (i = 0; i < adev->num_ip_blocks; i++)
  if (adev->ip_blocks[i].version->type == type)
   return &adev->ip_blocks[i];

 return ((void*)0);
}
