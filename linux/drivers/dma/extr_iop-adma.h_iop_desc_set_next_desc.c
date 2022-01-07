
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union iop3xx_desc {TYPE_1__* dma; int ptr; } ;
typedef int u32 ;
struct iop_adma_desc_slot {int hw_desc; } ;
struct TYPE_2__ {int next_desc; } ;


 int iop_paranoia (int ) ;

__attribute__((used)) static inline void iop_desc_set_next_desc(struct iop_adma_desc_slot *desc,
     u32 next_desc_addr)
{

 union iop3xx_desc hw_desc = { .ptr = desc->hw_desc, };

 iop_paranoia(hw_desc.dma->next_desc);
 hw_desc.dma->next_desc = next_desc_addr;
}
