
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {int sync_seq; int gpu_addr; } ;
struct amdgpu_ring {TYPE_1__ fence_drv; } ;


 int PACKET0 (int ,int ) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int lower_32_bits (int ) ;
 int mmUVD_GPCOM_VCPU_CMD ;
 int mmUVD_GPCOM_VCPU_DATA0 ;
 int mmUVD_GPCOM_VCPU_DATA1 ;
 int mmUVD_GP_SCRATCH8 ;
 int mmUVD_GP_SCRATCH9 ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void uvd_v6_0_ring_emit_pipeline_sync(struct amdgpu_ring *ring)
{
 uint32_t seq = ring->fence_drv.sync_seq;
 uint64_t addr = ring->fence_drv.gpu_addr;

 amdgpu_ring_write(ring, PACKET0(mmUVD_GPCOM_VCPU_DATA0, 0));
 amdgpu_ring_write(ring, lower_32_bits(addr));
 amdgpu_ring_write(ring, PACKET0(mmUVD_GPCOM_VCPU_DATA1, 0));
 amdgpu_ring_write(ring, upper_32_bits(addr));
 amdgpu_ring_write(ring, PACKET0(mmUVD_GP_SCRATCH8, 0));
 amdgpu_ring_write(ring, 0xffffffff);
 amdgpu_ring_write(ring, PACKET0(mmUVD_GP_SCRATCH9, 0));
 amdgpu_ring_write(ring, seq);
 amdgpu_ring_write(ring, PACKET0(mmUVD_GPCOM_VCPU_CMD, 0));
 amdgpu_ring_write(ring, 0xE);
}
