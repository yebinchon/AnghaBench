
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct amdgpu_device {int num_ip_blocks; TYPE_3__* ip_blocks; } ;
typedef enum amd_ip_block_type { ____Placeholder_amd_ip_block_type } amd_ip_block_type ;
struct TYPE_8__ {int (* is_idle ) (void*) ;} ;
struct TYPE_5__ {int valid; } ;
struct TYPE_7__ {TYPE_2__* version; TYPE_1__ status; } ;
struct TYPE_6__ {int type; TYPE_4__* funcs; } ;


 int stub1 (void*) ;

bool amdgpu_device_ip_is_idle(struct amdgpu_device *adev,
         enum amd_ip_block_type block_type)
{
 int i;

 for (i = 0; i < adev->num_ip_blocks; i++) {
  if (!adev->ip_blocks[i].status.valid)
   continue;
  if (adev->ip_blocks[i].version->type == block_type)
   return adev->ip_blocks[i].version->funcs->is_idle((void *)adev);
 }
 return 1;

}
