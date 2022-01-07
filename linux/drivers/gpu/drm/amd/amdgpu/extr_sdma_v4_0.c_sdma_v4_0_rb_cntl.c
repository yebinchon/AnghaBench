
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {int ring_size; } ;


 int RB_SIZE ;
 int RB_SWAP_ENABLE ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RPTR_WRITEBACK_SWAP_ENABLE ;
 int SDMA0_GFX_RB_CNTL ;
 int order_base_2 (int) ;

__attribute__((used)) static uint32_t sdma_v4_0_rb_cntl(struct amdgpu_ring *ring, uint32_t rb_cntl)
{

 uint32_t rb_bufsz = order_base_2(ring->ring_size / 4);

 rb_cntl = REG_SET_FIELD(rb_cntl, SDMA0_GFX_RB_CNTL, RB_SIZE, rb_bufsz);





 return rb_cntl;
}
