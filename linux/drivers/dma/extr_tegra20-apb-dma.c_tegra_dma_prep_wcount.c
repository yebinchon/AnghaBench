
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tegra_dma_channel_regs {int wcount; int csr; } ;
struct tegra_dma_channel {TYPE_2__* tdma; } ;
struct TYPE_4__ {TYPE_1__* chip_data; } ;
struct TYPE_3__ {scalar_t__ support_separate_wcount_reg; } ;



__attribute__((used)) static void tegra_dma_prep_wcount(struct tegra_dma_channel *tdc,
 struct tegra_dma_channel_regs *ch_regs, u32 len)
{
 u32 len_field = (len - 4) & 0xFFFC;

 if (tdc->tdma->chip_data->support_separate_wcount_reg)
  ch_regs->wcount = len_field;
 else
  ch_regs->csr |= len_field;
}
