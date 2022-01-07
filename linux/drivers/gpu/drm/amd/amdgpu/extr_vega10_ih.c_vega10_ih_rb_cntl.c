
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ih_ring {int ring_size; scalar_t__ use_bus_addr; } ;


 int IH_RB_CNTL ;
 int MC_RO ;
 int MC_SNOOP ;
 int MC_SPACE ;
 int MC_VMID ;
 int RB_SIZE ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int WPTR_OVERFLOW_CLEAR ;
 int WPTR_OVERFLOW_ENABLE ;
 int WPTR_WRITEBACK_ENABLE ;
 int order_base_2 (int) ;

__attribute__((used)) static uint32_t vega10_ih_rb_cntl(struct amdgpu_ih_ring *ih, uint32_t ih_rb_cntl)
{
 int rb_bufsz = order_base_2(ih->ring_size / 4);

 ih_rb_cntl = REG_SET_FIELD(ih_rb_cntl, IH_RB_CNTL,
       MC_SPACE, ih->use_bus_addr ? 1 : 4);
 ih_rb_cntl = REG_SET_FIELD(ih_rb_cntl, IH_RB_CNTL,
       WPTR_OVERFLOW_CLEAR, 1);
 ih_rb_cntl = REG_SET_FIELD(ih_rb_cntl, IH_RB_CNTL,
       WPTR_OVERFLOW_ENABLE, 1);
 ih_rb_cntl = REG_SET_FIELD(ih_rb_cntl, IH_RB_CNTL, RB_SIZE, rb_bufsz);



 ih_rb_cntl = REG_SET_FIELD(ih_rb_cntl, IH_RB_CNTL,
       WPTR_WRITEBACK_ENABLE, 1);
 ih_rb_cntl = REG_SET_FIELD(ih_rb_cntl, IH_RB_CNTL, MC_SNOOP, 1);
 ih_rb_cntl = REG_SET_FIELD(ih_rb_cntl, IH_RB_CNTL, MC_RO, 0);
 ih_rb_cntl = REG_SET_FIELD(ih_rb_cntl, IH_RB_CNTL, MC_VMID, 0);

 return ih_rb_cntl;
}
