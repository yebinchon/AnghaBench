
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {int me; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int PACKET0 (int ,int ) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int UVD ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int mmUVD_GPCOM_VCPU_CMD ;
 int mmUVD_GPCOM_VCPU_DATA0 ;
 int mmUVD_GPCOM_VCPU_DATA1 ;

__attribute__((used)) static void uvd_v7_0_ring_emit_wreg(struct amdgpu_ring *ring,
        uint32_t reg, uint32_t val)
{
 struct amdgpu_device *adev = ring->adev;

 amdgpu_ring_write(ring,
  PACKET0(SOC15_REG_OFFSET(UVD, ring->me, mmUVD_GPCOM_VCPU_DATA0), 0));
 amdgpu_ring_write(ring, reg << 2);
 amdgpu_ring_write(ring,
  PACKET0(SOC15_REG_OFFSET(UVD, ring->me, mmUVD_GPCOM_VCPU_DATA1), 0));
 amdgpu_ring_write(ring, val);
 amdgpu_ring_write(ring,
  PACKET0(SOC15_REG_OFFSET(UVD, ring->me, mmUVD_GPCOM_VCPU_CMD), 0));
 amdgpu_ring_write(ring, 8);
}
