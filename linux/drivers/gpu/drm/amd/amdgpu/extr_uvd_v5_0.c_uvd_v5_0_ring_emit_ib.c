
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {int dummy; } ;
struct amdgpu_job {int dummy; } ;
struct amdgpu_ib {int length_dw; int gpu_addr; } ;


 int PACKET0 (int ,int ) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int ) ;
 int lower_32_bits (int ) ;
 int mmUVD_LMI_RBC_IB_64BIT_BAR_HIGH ;
 int mmUVD_LMI_RBC_IB_64BIT_BAR_LOW ;
 int mmUVD_RBC_IB_SIZE ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void uvd_v5_0_ring_emit_ib(struct amdgpu_ring *ring,
      struct amdgpu_job *job,
      struct amdgpu_ib *ib,
      uint32_t flags)
{
 amdgpu_ring_write(ring, PACKET0(mmUVD_LMI_RBC_IB_64BIT_BAR_LOW, 0));
 amdgpu_ring_write(ring, lower_32_bits(ib->gpu_addr));
 amdgpu_ring_write(ring, PACKET0(mmUVD_LMI_RBC_IB_64BIT_BAR_HIGH, 0));
 amdgpu_ring_write(ring, upper_32_bits(ib->gpu_addr));
 amdgpu_ring_write(ring, PACKET0(mmUVD_RBC_IB_SIZE, 0));
 amdgpu_ring_write(ring, ib->length_dw);
}
