
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int num_uvd_inst; int harvest_config; int num_enc_rings; TYPE_2__* inst; } ;
struct amdgpu_device {TYPE_3__ uvd; } ;
struct TYPE_5__ {TYPE_1__* ring_enc; } ;
struct TYPE_4__ {int me; int * funcs; } ;


 int DRM_INFO (char*,int) ;
 int uvd_v7_0_enc_ring_vm_funcs ;

__attribute__((used)) static void uvd_v7_0_set_enc_ring_funcs(struct amdgpu_device *adev)
{
 int i, j;

 for (j = 0; j < adev->uvd.num_uvd_inst; j++) {
  if (adev->uvd.harvest_config & (1 << j))
   continue;
  for (i = 0; i < adev->uvd.num_enc_rings; ++i) {
   adev->uvd.inst[j].ring_enc[i].funcs = &uvd_v7_0_enc_ring_vm_funcs;
   adev->uvd.inst[j].ring_enc[i].me = j;
  }

  DRM_INFO("UVD(%d) ENC is enabled in VM mode\n", j);
 }
}
