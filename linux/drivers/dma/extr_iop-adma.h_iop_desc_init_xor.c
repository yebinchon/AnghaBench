
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iop_adma_desc_slot {int hw_desc; } ;


 int iop3xx_desc_init_xor (int ,int,unsigned long) ;

__attribute__((used)) static inline void
iop_desc_init_xor(struct iop_adma_desc_slot *desc, int src_cnt,
    unsigned long flags)
{
 iop3xx_desc_init_xor(desc->hw_desc, src_cnt, flags);
}
