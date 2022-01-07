
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* inst; } ;
struct amdgpu_device {TYPE_3__ vcn; } ;
struct TYPE_4__ {int * funcs; } ;
struct TYPE_5__ {TYPE_1__ ring_jpeg; } ;


 int DRM_INFO (char*) ;
 int vcn_v2_0_jpeg_ring_vm_funcs ;

__attribute__((used)) static void vcn_v2_0_set_jpeg_ring_funcs(struct amdgpu_device *adev)
{
 adev->vcn.inst->ring_jpeg.funcs = &vcn_v2_0_jpeg_ring_vm_funcs;
 DRM_INFO("VCN jpeg decode is enabled in VM mode\n");
}
