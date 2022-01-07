
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {int dummy; } ;


 int BUG_ON (int) ;
 int PACKET3 (int ,int) ;
 int PACKET3_WAIT_REG_MEM ;
 int WAIT_REG_MEM_ENGINE (int) ;
 int WAIT_REG_MEM_FUNCTION (int) ;
 int WAIT_REG_MEM_MEM_SPACE (int) ;
 int WAIT_REG_MEM_OPERATION (int) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;

__attribute__((used)) static void gfx_v10_0_wait_reg_mem(struct amdgpu_ring *ring, int eng_sel,
      int mem_space, int opt, uint32_t addr0,
      uint32_t addr1, uint32_t ref, uint32_t mask,
      uint32_t inv)
{
 amdgpu_ring_write(ring, PACKET3(PACKET3_WAIT_REG_MEM, 5));
 amdgpu_ring_write(ring,

     (WAIT_REG_MEM_MEM_SPACE(mem_space) |
      WAIT_REG_MEM_OPERATION(opt) |
      WAIT_REG_MEM_FUNCTION(3) |
      WAIT_REG_MEM_ENGINE(eng_sel)));

 if (mem_space)
  BUG_ON(addr0 & 0x3);
 amdgpu_ring_write(ring, addr0);
 amdgpu_ring_write(ring, addr1);
 amdgpu_ring_write(ring, ref);
 amdgpu_ring_write(ring, mask);
 amdgpu_ring_write(ring, inv);
}
