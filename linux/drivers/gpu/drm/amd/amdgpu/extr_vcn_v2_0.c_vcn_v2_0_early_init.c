
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_vcn_inst; int num_enc_rings; } ;
struct amdgpu_device {TYPE_1__ vcn; } ;


 int vcn_v2_0_set_dec_ring_funcs (struct amdgpu_device*) ;
 int vcn_v2_0_set_enc_ring_funcs (struct amdgpu_device*) ;
 int vcn_v2_0_set_irq_funcs (struct amdgpu_device*) ;
 int vcn_v2_0_set_jpeg_ring_funcs (struct amdgpu_device*) ;

__attribute__((used)) static int vcn_v2_0_early_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 adev->vcn.num_vcn_inst = 1;
 adev->vcn.num_enc_rings = 2;

 vcn_v2_0_set_dec_ring_funcs(adev);
 vcn_v2_0_set_enc_ring_funcs(adev);
 vcn_v2_0_set_jpeg_ring_funcs(adev);
 vcn_v2_0_set_irq_funcs(adev);

 return 0;
}
