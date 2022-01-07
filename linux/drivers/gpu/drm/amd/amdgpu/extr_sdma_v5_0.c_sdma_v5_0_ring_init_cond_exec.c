
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ring {unsigned int wptr; unsigned int buf_mask; int cond_exe_gpu_addr; } ;


 int SDMA_OP_COND_EXE ;
 int SDMA_PKT_HEADER_OP (int ) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static unsigned sdma_v5_0_ring_init_cond_exec(struct amdgpu_ring *ring)
{
 unsigned ret;

 amdgpu_ring_write(ring, SDMA_PKT_HEADER_OP(SDMA_OP_COND_EXE));
 amdgpu_ring_write(ring, lower_32_bits(ring->cond_exe_gpu_addr));
 amdgpu_ring_write(ring, upper_32_bits(ring->cond_exe_gpu_addr));
 amdgpu_ring_write(ring, 1);
 ret = ring->wptr & ring->buf_mask;
 amdgpu_ring_write(ring, 0x55aa55aa);

 return ret;
}
