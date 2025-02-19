
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmp_tdma_chan {int idx; TYPE_1__* desc_arr; scalar_t__ reg_base; } ;
struct TYPE_2__ {scalar_t__ dst_addr; scalar_t__ src_addr; } ;


 size_t EINVAL ;
 scalar_t__ TDDAR ;
 scalar_t__ TDSAR ;
 size_t __raw_readl (scalar_t__) ;

__attribute__((used)) static size_t mmp_tdma_get_pos(struct mmp_tdma_chan *tdmac)
{
 size_t reg;

 if (tdmac->idx == 0) {
  reg = __raw_readl(tdmac->reg_base + TDSAR);
  reg -= tdmac->desc_arr[0].src_addr;
 } else if (tdmac->idx == 1) {
  reg = __raw_readl(tdmac->reg_base + TDDAR);
  reg -= tdmac->desc_arr[0].dst_addr;
 } else
  return -EINVAL;

 return reg;
}
