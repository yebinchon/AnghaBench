
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int num_enc_rings; TYPE_2__* inst; } ;
struct amdgpu_device {TYPE_3__ uvd; } ;
struct TYPE_5__ {TYPE_1__* ring_enc; } ;
struct TYPE_4__ {int * funcs; } ;


 int DRM_INFO (char*) ;
 int uvd_v6_0_enc_ring_vm_funcs ;

__attribute__((used)) static void uvd_v6_0_set_enc_ring_funcs(struct amdgpu_device *adev)
{
 int i;

 for (i = 0; i < adev->uvd.num_enc_rings; ++i)
  adev->uvd.inst->ring_enc[i].funcs = &uvd_v6_0_enc_ring_vm_funcs;

 DRM_INFO("UVD ENC is enabled in VM mode\n");
}
