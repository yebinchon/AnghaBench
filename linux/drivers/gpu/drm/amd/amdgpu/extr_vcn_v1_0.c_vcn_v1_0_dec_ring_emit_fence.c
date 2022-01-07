
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 unsigned int AMDGPU_FENCE_FLAG_64BIT ;
 int PACKET0 (int ,int ) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int UVD ;
 int VCN_DEC_CMD_FENCE ;
 int VCN_DEC_CMD_TRAP ;
 int WARN_ON (unsigned int) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int mmUVD_CONTEXT_ID ;
 int mmUVD_GPCOM_VCPU_CMD ;
 int mmUVD_GPCOM_VCPU_DATA0 ;
 int mmUVD_GPCOM_VCPU_DATA1 ;
 int upper_32_bits (int) ;

__attribute__((used)) static void vcn_v1_0_dec_ring_emit_fence(struct amdgpu_ring *ring, u64 addr, u64 seq,
         unsigned flags)
{
 struct amdgpu_device *adev = ring->adev;

 WARN_ON(flags & AMDGPU_FENCE_FLAG_64BIT);

 amdgpu_ring_write(ring,
  PACKET0(SOC15_REG_OFFSET(UVD, 0, mmUVD_CONTEXT_ID), 0));
 amdgpu_ring_write(ring, seq);
 amdgpu_ring_write(ring,
  PACKET0(SOC15_REG_OFFSET(UVD, 0, mmUVD_GPCOM_VCPU_DATA0), 0));
 amdgpu_ring_write(ring, addr & 0xffffffff);
 amdgpu_ring_write(ring,
  PACKET0(SOC15_REG_OFFSET(UVD, 0, mmUVD_GPCOM_VCPU_DATA1), 0));
 amdgpu_ring_write(ring, upper_32_bits(addr) & 0xff);
 amdgpu_ring_write(ring,
  PACKET0(SOC15_REG_OFFSET(UVD, 0, mmUVD_GPCOM_VCPU_CMD), 0));
 amdgpu_ring_write(ring, VCN_DEC_CMD_FENCE << 1);

 amdgpu_ring_write(ring,
  PACKET0(SOC15_REG_OFFSET(UVD, 0, mmUVD_GPCOM_VCPU_DATA0), 0));
 amdgpu_ring_write(ring, 0);
 amdgpu_ring_write(ring,
  PACKET0(SOC15_REG_OFFSET(UVD, 0, mmUVD_GPCOM_VCPU_DATA1), 0));
 amdgpu_ring_write(ring, 0);
 amdgpu_ring_write(ring,
  PACKET0(SOC15_REG_OFFSET(UVD, 0, mmUVD_GPCOM_VCPU_CMD), 0));
 amdgpu_ring_write(ring, VCN_DEC_CMD_TRAP << 1);
}
