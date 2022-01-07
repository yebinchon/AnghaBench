
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct amdgpu_device {int num_ip_blocks; TYPE_4__* ip_blocks; } ;
typedef enum amd_ip_block_type { ____Placeholder_amd_ip_block_type } amd_ip_block_type ;
struct TYPE_6__ {int valid; } ;
struct TYPE_8__ {TYPE_3__* version; TYPE_2__ status; } ;
struct TYPE_7__ {int type; TYPE_1__* funcs; } ;
struct TYPE_5__ {int (* wait_for_idle ) (void*) ;} ;


 int stub1 (void*) ;

int amdgpu_device_ip_wait_for_idle(struct amdgpu_device *adev,
       enum amd_ip_block_type block_type)
{
 int i, r;

 for (i = 0; i < adev->num_ip_blocks; i++) {
  if (!adev->ip_blocks[i].status.valid)
   continue;
  if (adev->ip_blocks[i].version->type == block_type) {
   r = adev->ip_blocks[i].version->funcs->wait_for_idle((void *)adev);
   if (r)
    return r;
   break;
  }
 }
 return 0;

}
