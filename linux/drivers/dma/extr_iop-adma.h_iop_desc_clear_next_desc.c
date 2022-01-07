
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union iop3xx_desc {TYPE_1__* dma; int ptr; } ;
struct iop_adma_desc_slot {int hw_desc; } ;
struct TYPE_2__ {scalar_t__ next_desc; } ;



__attribute__((used)) static inline void iop_desc_clear_next_desc(struct iop_adma_desc_slot *desc)
{

 union iop3xx_desc hw_desc = { .ptr = desc->hw_desc, };
 hw_desc.dma->next_desc = 0;
}
