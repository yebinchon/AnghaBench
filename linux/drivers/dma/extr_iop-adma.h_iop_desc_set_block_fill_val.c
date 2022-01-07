
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iop_adma_desc_slot {struct iop3xx_desc_aau* hw_desc; } ;
struct iop3xx_desc_aau {int * src; } ;



__attribute__((used)) static inline void iop_desc_set_block_fill_val(struct iop_adma_desc_slot *desc,
      u32 val)
{
 struct iop3xx_desc_aau *hw_desc = desc->hw_desc;
 hw_desc->src[0] = val;
}
