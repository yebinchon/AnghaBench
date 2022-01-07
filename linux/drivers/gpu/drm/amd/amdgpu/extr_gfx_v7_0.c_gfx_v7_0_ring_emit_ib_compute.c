
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct amdgpu_ring {TYPE_2__* adev; } ;
struct amdgpu_job {int dummy; } ;
struct amdgpu_ib {unsigned int length_dw; int flags; int gpu_addr; } ;
struct TYPE_3__ {int gds_compute_max_wave_id; } ;
struct TYPE_4__ {TYPE_1__ gds; } ;


 int AMDGPU_IB_FLAG_RESET_GDS_MAX_WAVE_ID ;
 unsigned int AMDGPU_JOB_GET_VMID (struct amdgpu_job*) ;
 unsigned int INDIRECT_BUFFER_VALID ;
 int PACKET3 (int ,int) ;
 int PACKET3_INDIRECT_BUFFER ;
 int PACKET3_SET_CONFIG_REG ;
 int PACKET3_SET_CONFIG_REG_START ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int mmGDS_COMPUTE_MAX_WAVE_ID ;
 int upper_32_bits (int) ;

__attribute__((used)) static void gfx_v7_0_ring_emit_ib_compute(struct amdgpu_ring *ring,
       struct amdgpu_job *job,
       struct amdgpu_ib *ib,
       uint32_t flags)
{
 unsigned vmid = AMDGPU_JOB_GET_VMID(job);
 u32 control = INDIRECT_BUFFER_VALID | ib->length_dw | (vmid << 24);
 if (ib->flags & AMDGPU_IB_FLAG_RESET_GDS_MAX_WAVE_ID) {
  amdgpu_ring_write(ring, PACKET3(PACKET3_SET_CONFIG_REG, 1));
  amdgpu_ring_write(ring, mmGDS_COMPUTE_MAX_WAVE_ID - PACKET3_SET_CONFIG_REG_START);
  amdgpu_ring_write(ring, ring->adev->gds.gds_compute_max_wave_id);
 }

 amdgpu_ring_write(ring, PACKET3(PACKET3_INDIRECT_BUFFER, 2));
 amdgpu_ring_write(ring,



       (ib->gpu_addr & 0xFFFFFFFC));
 amdgpu_ring_write(ring, upper_32_bits(ib->gpu_addr) & 0xFFFF);
 amdgpu_ring_write(ring, control);
}
