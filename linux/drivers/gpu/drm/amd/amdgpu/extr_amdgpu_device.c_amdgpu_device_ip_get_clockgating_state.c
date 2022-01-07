
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct amdgpu_device {int num_ip_blocks; TYPE_4__* ip_blocks; } ;
struct TYPE_5__ {int valid; } ;
struct TYPE_8__ {TYPE_3__* version; TYPE_1__ status; } ;
struct TYPE_7__ {TYPE_2__* funcs; } ;
struct TYPE_6__ {int (* get_clockgating_state ) (void*,int *) ;} ;


 int stub1 (void*,int *) ;

void amdgpu_device_ip_get_clockgating_state(struct amdgpu_device *adev,
         u32 *flags)
{
 int i;

 for (i = 0; i < adev->num_ip_blocks; i++) {
  if (!adev->ip_blocks[i].status.valid)
   continue;
  if (adev->ip_blocks[i].version->funcs->get_clockgating_state)
   adev->ip_blocks[i].version->funcs->get_clockgating_state((void *)adev, flags);
 }
}
