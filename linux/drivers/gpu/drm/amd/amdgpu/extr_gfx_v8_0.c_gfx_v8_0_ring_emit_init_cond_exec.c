
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ring {unsigned int wptr; unsigned int buf_mask; int cond_exe_gpu_addr; } ;


 int PACKET3 (int ,int) ;
 int PACKET3_COND_EXEC ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static unsigned gfx_v8_0_ring_emit_init_cond_exec(struct amdgpu_ring *ring)
{
 unsigned ret;

 amdgpu_ring_write(ring, PACKET3(PACKET3_COND_EXEC, 3));
 amdgpu_ring_write(ring, lower_32_bits(ring->cond_exe_gpu_addr));
 amdgpu_ring_write(ring, upper_32_bits(ring->cond_exe_gpu_addr));
 amdgpu_ring_write(ring, 0);
 ret = ring->wptr & ring->buf_mask;
 amdgpu_ring_write(ring, 0x55aa55aa);
 return ret;
}
