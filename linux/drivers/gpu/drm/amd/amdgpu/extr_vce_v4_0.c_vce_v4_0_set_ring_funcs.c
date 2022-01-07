
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_rings; TYPE_1__* ring; } ;
struct amdgpu_device {TYPE_2__ vce; } ;
struct TYPE_3__ {int me; int * funcs; } ;


 int DRM_INFO (char*) ;
 int vce_v4_0_ring_vm_funcs ;

__attribute__((used)) static void vce_v4_0_set_ring_funcs(struct amdgpu_device *adev)
{
 int i;

 for (i = 0; i < adev->vce.num_rings; i++) {
  adev->vce.ring[i].funcs = &vce_v4_0_ring_vm_funcs;
  adev->vce.ring[i].me = i;
 }
 DRM_INFO("VCE enabled in VM mode\n");
}
