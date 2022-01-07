
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 unsigned int AMDGPU_FENCE_FLAG_64BIT ;
 int PACKETJ (int ,int ,int ,int ) ;
 int PACKETJ_CONDITION_CHECK0 ;
 int PACKETJ_CONDITION_CHECK3 ;
 int PACKETJ_TYPE0 ;
 int PACKETJ_TYPE2 ;
 int PACKETJ_TYPE4 ;
 int PACKETJ_TYPE7 ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int UVD ;
 int WARN_ON (unsigned int) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int lower_32_bits (int) ;
 int mmUVD_JPEG_GPCOM_CMD ;
 int mmUVD_JPEG_GPCOM_DATA0 ;
 int mmUVD_JPEG_GPCOM_DATA1 ;
 int mmUVD_JRBC_EXTERNAL_REG_BASE ;
 int mmUVD_JRBC_RB_COND_RD_TIMER ;
 int mmUVD_JRBC_RB_REF_DATA ;
 int mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_HIGH ;
 int mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_LOW ;
 int mmUVD_LMI_JRBC_RB_MEM_WR_64BIT_BAR_HIGH ;
 int mmUVD_LMI_JRBC_RB_MEM_WR_64BIT_BAR_LOW ;
 int upper_32_bits (int) ;

__attribute__((used)) static void vcn_v1_0_jpeg_ring_emit_fence(struct amdgpu_ring *ring, u64 addr, u64 seq,
         unsigned flags)
{
 struct amdgpu_device *adev = ring->adev;

 WARN_ON(flags & AMDGPU_FENCE_FLAG_64BIT);

 amdgpu_ring_write(ring,
  PACKETJ(SOC15_REG_OFFSET(UVD, 0, mmUVD_JPEG_GPCOM_DATA0), 0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, seq);

 amdgpu_ring_write(ring,
  PACKETJ(SOC15_REG_OFFSET(UVD, 0, mmUVD_JPEG_GPCOM_DATA1), 0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, seq);

 amdgpu_ring_write(ring,
  PACKETJ(SOC15_REG_OFFSET(UVD, 0, mmUVD_LMI_JRBC_RB_MEM_WR_64BIT_BAR_LOW), 0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, lower_32_bits(addr));

 amdgpu_ring_write(ring,
  PACKETJ(SOC15_REG_OFFSET(UVD, 0, mmUVD_LMI_JRBC_RB_MEM_WR_64BIT_BAR_HIGH), 0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, upper_32_bits(addr));

 amdgpu_ring_write(ring,
  PACKETJ(SOC15_REG_OFFSET(UVD, 0, mmUVD_JPEG_GPCOM_CMD), 0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, 0x8);

 amdgpu_ring_write(ring,
  PACKETJ(SOC15_REG_OFFSET(UVD, 0, mmUVD_JPEG_GPCOM_CMD), 0, PACKETJ_CONDITION_CHECK0, PACKETJ_TYPE4));
 amdgpu_ring_write(ring, 0);

 amdgpu_ring_write(ring,
  PACKETJ(SOC15_REG_OFFSET(UVD, 0, mmUVD_JRBC_RB_COND_RD_TIMER), 0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, 0x01400200);

 amdgpu_ring_write(ring,
  PACKETJ(SOC15_REG_OFFSET(UVD, 0, mmUVD_JRBC_RB_REF_DATA), 0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, seq);

 amdgpu_ring_write(ring,
  PACKETJ(SOC15_REG_OFFSET(UVD, 0, mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_LOW), 0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, lower_32_bits(addr));

 amdgpu_ring_write(ring,
  PACKETJ(SOC15_REG_OFFSET(UVD, 0, mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_HIGH), 0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, upper_32_bits(addr));

 amdgpu_ring_write(ring,
  PACKETJ(0, 0, PACKETJ_CONDITION_CHECK3, PACKETJ_TYPE2));
 amdgpu_ring_write(ring, 0xffffffff);

 amdgpu_ring_write(ring,
  PACKETJ(SOC15_REG_OFFSET(UVD, 0, mmUVD_JRBC_EXTERNAL_REG_BASE), 0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, 0x3fbc);

 amdgpu_ring_write(ring,
  PACKETJ(0, 0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, 0x1);


 amdgpu_ring_write(ring, PACKETJ(0, 0, 0, PACKETJ_TYPE7));
 amdgpu_ring_write(ring, 0);
}
