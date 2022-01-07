
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* inst; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_3__ uvd; } ;
struct TYPE_4__ {int * funcs; } ;
struct TYPE_5__ {TYPE_1__ ring; } ;


 scalar_t__ CHIP_POLARIS10 ;
 int DRM_INFO (char*) ;
 int uvd_v6_0_ring_phys_funcs ;
 int uvd_v6_0_ring_vm_funcs ;

__attribute__((used)) static void uvd_v6_0_set_ring_funcs(struct amdgpu_device *adev)
{
 if (adev->asic_type >= CHIP_POLARIS10) {
  adev->uvd.inst->ring.funcs = &uvd_v6_0_ring_vm_funcs;
  DRM_INFO("UVD is enabled in VM mode\n");
 } else {
  adev->uvd.inst->ring.funcs = &uvd_v6_0_ring_phys_funcs;
  DRM_INFO("UVD is enabled in physical mode\n");
 }
}
