
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ctl_hi; } ;
struct axi_dma_desc {TYPE_1__ lli; } ;


 int CH_CTL_H_LLI_LAST ;
 int cpu_to_le32 (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void set_desc_last(struct axi_dma_desc *desc)
{
 u32 val;

 val = le32_to_cpu(desc->lli.ctl_hi);
 val |= CH_CTL_H_LLI_LAST;
 desc->lli.ctl_hi = cpu_to_le32(val);
}
