
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {int gpu_addr; int sync_seq; } ;
struct amdgpu_ring {TYPE_1__ fence_drv; } ;


 int HEVC_ENC_CMD_WAIT_GE ;
 int amdgpu_ring_write (struct amdgpu_ring*,int ) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void uvd_v6_0_enc_ring_emit_pipeline_sync(struct amdgpu_ring *ring)
{
 uint32_t seq = ring->fence_drv.sync_seq;
 uint64_t addr = ring->fence_drv.gpu_addr;

 amdgpu_ring_write(ring, HEVC_ENC_CMD_WAIT_GE);
 amdgpu_ring_write(ring, lower_32_bits(addr));
 amdgpu_ring_write(ring, upper_32_bits(addr));
 amdgpu_ring_write(ring, seq);
}
