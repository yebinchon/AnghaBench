
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num_uvd_inst; int harvest_config; TYPE_3__* inst; } ;
struct amdgpu_device {TYPE_2__ uvd; } ;
struct TYPE_4__ {int me; int * funcs; } ;
struct TYPE_6__ {TYPE_1__ ring; } ;


 int DRM_INFO (char*,int) ;
 int uvd_v7_0_ring_vm_funcs ;

__attribute__((used)) static void uvd_v7_0_set_ring_funcs(struct amdgpu_device *adev)
{
 int i;

 for (i = 0; i < adev->uvd.num_uvd_inst; i++) {
  if (adev->uvd.harvest_config & (1 << i))
   continue;
  adev->uvd.inst[i].ring.funcs = &uvd_v7_0_ring_vm_funcs;
  adev->uvd.inst[i].ring.me = i;
  DRM_INFO("UVD(%d) is enabled in VM mode\n", i);
 }
}
