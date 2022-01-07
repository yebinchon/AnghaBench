
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int num_vcn_inst; int harvest_config; TYPE_2__* inst; } ;
struct amdgpu_device {TYPE_3__ vcn; } ;
struct TYPE_4__ {int me; int * funcs; } ;
struct TYPE_5__ {TYPE_1__ ring_dec; } ;


 int DRM_INFO (char*,int) ;
 int vcn_v2_5_dec_ring_vm_funcs ;

__attribute__((used)) static void vcn_v2_5_set_dec_ring_funcs(struct amdgpu_device *adev)
{
 int i;

 for (i = 0; i < adev->vcn.num_vcn_inst; ++i) {
  if (adev->vcn.harvest_config & (1 << i))
   continue;
  adev->vcn.inst[i].ring_dec.funcs = &vcn_v2_5_dec_ring_vm_funcs;
  adev->vcn.inst[i].ring_dec.me = i;
  DRM_INFO("VCN(%d) decode is enabled in VM mode\n", i);
 }
}
