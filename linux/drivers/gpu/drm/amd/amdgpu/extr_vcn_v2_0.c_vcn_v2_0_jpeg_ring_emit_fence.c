
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct amdgpu_ring {int dummy; } ;


 unsigned int AMDGPU_FENCE_FLAG_64BIT ;
 int JRBC_DEC_EXTERNAL_REG_WRITE_ADDR ;
 int PACKETJ (int ,int ,int ,int ) ;
 int PACKETJ_CONDITION_CHECK0 ;
 int PACKETJ_TYPE0 ;
 int PACKETJ_TYPE4 ;
 int PACKETJ_TYPE7 ;
 int WARN_ON (unsigned int) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int lower_32_bits (int) ;
 int mmUVD_JPEG_GPCOM_CMD_INTERNAL_OFFSET ;
 int mmUVD_JPEG_GPCOM_DATA0_INTERNAL_OFFSET ;
 int mmUVD_JPEG_GPCOM_DATA1_INTERNAL_OFFSET ;
 int mmUVD_JRBC_EXTERNAL_REG_INTERNAL_OFFSET ;
 int mmUVD_LMI_JRBC_RB_MEM_WR_64BIT_BAR_HIGH_INTERNAL_OFFSET ;
 int mmUVD_LMI_JRBC_RB_MEM_WR_64BIT_BAR_LOW_INTERNAL_OFFSET ;
 int upper_32_bits (int) ;

void vcn_v2_0_jpeg_ring_emit_fence(struct amdgpu_ring *ring, u64 addr, u64 seq,
    unsigned flags)
{
 WARN_ON(flags & AMDGPU_FENCE_FLAG_64BIT);

 amdgpu_ring_write(ring, PACKETJ(mmUVD_JPEG_GPCOM_DATA0_INTERNAL_OFFSET,
  0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, seq);

 amdgpu_ring_write(ring, PACKETJ(mmUVD_JPEG_GPCOM_DATA1_INTERNAL_OFFSET,
  0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, seq);

 amdgpu_ring_write(ring, PACKETJ(mmUVD_LMI_JRBC_RB_MEM_WR_64BIT_BAR_LOW_INTERNAL_OFFSET,
  0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, lower_32_bits(addr));

 amdgpu_ring_write(ring, PACKETJ(mmUVD_LMI_JRBC_RB_MEM_WR_64BIT_BAR_HIGH_INTERNAL_OFFSET,
  0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, upper_32_bits(addr));

 amdgpu_ring_write(ring, PACKETJ(mmUVD_JPEG_GPCOM_CMD_INTERNAL_OFFSET,
  0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, 0x8);

 amdgpu_ring_write(ring, PACKETJ(mmUVD_JPEG_GPCOM_CMD_INTERNAL_OFFSET,
  0, PACKETJ_CONDITION_CHECK0, PACKETJ_TYPE4));
 amdgpu_ring_write(ring, 0);

 amdgpu_ring_write(ring, PACKETJ(mmUVD_JRBC_EXTERNAL_REG_INTERNAL_OFFSET,
  0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, 0x3fbc);

 amdgpu_ring_write(ring, PACKETJ(JRBC_DEC_EXTERNAL_REG_WRITE_ADDR,
  0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, 0x1);

 amdgpu_ring_write(ring, PACKETJ(0, 0, 0, PACKETJ_TYPE7));
 amdgpu_ring_write(ring, 0);
}
