
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ring {int wptr; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int UVD ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int lower_32_bits (int ) ;
 int mmUVD_JRBC_RB_WPTR ;

__attribute__((used)) static void vcn_v1_0_jpeg_ring_set_wptr(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;

 WREG32_SOC15(UVD, 0, mmUVD_JRBC_RB_WPTR, lower_32_bits(ring->wptr));
}
