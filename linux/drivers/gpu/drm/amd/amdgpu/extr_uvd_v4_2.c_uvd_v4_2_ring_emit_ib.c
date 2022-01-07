
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
 int mmUVD_RBC_IB_BASE ;
 int mmUVD_RBC_IB_SIZE ;

__attribute__((used)) static void uvd_v4_2_ring_emit_ib(struct amdgpu_ring *ring,
      struct amdgpu_job *job,
      struct amdgpu_ib *ib,
      uint32_t flags)
{
 amdgpu_ring_write(ring, PACKET0(mmUVD_RBC_IB_BASE, 0));
 amdgpu_ring_write(ring, ib->gpu_addr);
 amdgpu_ring_write(ring, PACKET0(mmUVD_RBC_IB_SIZE, 0));
 amdgpu_ring_write(ring, ib->length_dw);
}
