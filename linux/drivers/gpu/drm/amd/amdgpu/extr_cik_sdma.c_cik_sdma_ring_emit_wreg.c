
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {int dummy; } ;


 int SDMA_OPCODE_SRBM_WRITE ;
 int SDMA_PACKET (int ,int ,int) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int ) ;

__attribute__((used)) static void cik_sdma_ring_emit_wreg(struct amdgpu_ring *ring,
        uint32_t reg, uint32_t val)
{
 amdgpu_ring_write(ring, SDMA_PACKET(SDMA_OPCODE_SRBM_WRITE, 0, 0xf000));
 amdgpu_ring_write(ring, reg);
 amdgpu_ring_write(ring, val);
}
