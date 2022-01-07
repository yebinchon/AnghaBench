
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {int dummy; } ;


 int SDMA_OP_SRBM_WRITE ;
 int SDMA_PKT_HEADER_OP (int ) ;
 int SDMA_PKT_SRBM_WRITE_HEADER_BYTE_EN (int) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;

__attribute__((used)) static void sdma_v3_0_ring_emit_wreg(struct amdgpu_ring *ring,
         uint32_t reg, uint32_t val)
{
 amdgpu_ring_write(ring, SDMA_PKT_HEADER_OP(SDMA_OP_SRBM_WRITE) |
     SDMA_PKT_SRBM_WRITE_HEADER_BYTE_EN(0xf));
 amdgpu_ring_write(ring, reg);
 amdgpu_ring_write(ring, val);
}
