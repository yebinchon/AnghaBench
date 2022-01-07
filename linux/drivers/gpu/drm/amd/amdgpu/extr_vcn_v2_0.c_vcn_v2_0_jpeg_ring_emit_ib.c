
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {int gpu_addr; } ;
struct amdgpu_job {int dummy; } ;
struct amdgpu_ib {int length_dw; int gpu_addr; } ;


 unsigned int AMDGPU_JOB_GET_VMID (struct amdgpu_job*) ;
 int PACKETJ (int ,int ,int ,int ) ;
 int PACKETJ_CONDITION_CHECK0 ;
 int PACKETJ_CONDITION_CHECK3 ;
 int PACKETJ_TYPE0 ;
 int PACKETJ_TYPE2 ;
 int PACKETJ_TYPE3 ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int lower_32_bits (int ) ;
 int mmUVD_JRBC_IB_SIZE_INTERNAL_OFFSET ;
 int mmUVD_JRBC_RB_COND_RD_TIMER_INTERNAL_OFFSET ;
 int mmUVD_JRBC_RB_REF_DATA_INTERNAL_OFFSET ;
 int mmUVD_JRBC_STATUS_INTERNAL_OFFSET ;
 int mmUVD_LMI_JPEG_VMID_INTERNAL_OFFSET ;
 int mmUVD_LMI_JRBC_IB_64BIT_BAR_HIGH_INTERNAL_OFFSET ;
 int mmUVD_LMI_JRBC_IB_64BIT_BAR_LOW_INTERNAL_OFFSET ;
 int mmUVD_LMI_JRBC_IB_VMID_INTERNAL_OFFSET ;
 int mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_HIGH_INTERNAL_OFFSET ;
 int mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_LOW_INTERNAL_OFFSET ;
 int upper_32_bits (int ) ;

void vcn_v2_0_jpeg_ring_emit_ib(struct amdgpu_ring *ring,
    struct amdgpu_job *job,
    struct amdgpu_ib *ib,
    uint32_t flags)
{
 unsigned vmid = AMDGPU_JOB_GET_VMID(job);

 amdgpu_ring_write(ring, PACKETJ(mmUVD_LMI_JRBC_IB_VMID_INTERNAL_OFFSET,
  0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, (vmid | (vmid << 4)));

 amdgpu_ring_write(ring, PACKETJ(mmUVD_LMI_JPEG_VMID_INTERNAL_OFFSET,
  0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, (vmid | (vmid << 4)));

 amdgpu_ring_write(ring, PACKETJ(mmUVD_LMI_JRBC_IB_64BIT_BAR_LOW_INTERNAL_OFFSET,
  0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, lower_32_bits(ib->gpu_addr));

 amdgpu_ring_write(ring, PACKETJ(mmUVD_LMI_JRBC_IB_64BIT_BAR_HIGH_INTERNAL_OFFSET,
  0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, upper_32_bits(ib->gpu_addr));

 amdgpu_ring_write(ring, PACKETJ(mmUVD_JRBC_IB_SIZE_INTERNAL_OFFSET,
  0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, ib->length_dw);

 amdgpu_ring_write(ring, PACKETJ(mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_LOW_INTERNAL_OFFSET,
  0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, lower_32_bits(ring->gpu_addr));

 amdgpu_ring_write(ring, PACKETJ(mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_HIGH_INTERNAL_OFFSET,
  0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, upper_32_bits(ring->gpu_addr));

 amdgpu_ring_write(ring, PACKETJ(0, 0, PACKETJ_CONDITION_CHECK0, PACKETJ_TYPE2));
 amdgpu_ring_write(ring, 0);

 amdgpu_ring_write(ring, PACKETJ(mmUVD_JRBC_RB_COND_RD_TIMER_INTERNAL_OFFSET,
  0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, 0x01400200);

 amdgpu_ring_write(ring, PACKETJ(mmUVD_JRBC_RB_REF_DATA_INTERNAL_OFFSET,
  0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, 0x2);

 amdgpu_ring_write(ring, PACKETJ(mmUVD_JRBC_STATUS_INTERNAL_OFFSET,
  0, PACKETJ_CONDITION_CHECK3, PACKETJ_TYPE3));
 amdgpu_ring_write(ring, 0x2);
}
