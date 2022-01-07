
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_dma_channel_regs {void* wcount; void* apb_seq; void* ahb_seq; void* apb_ptr; void* ahb_ptr; void* csr; } ;
struct tegra_dma_channel {int config_init; struct tegra_dma_channel_regs channel_reg; } ;
struct tegra_dma {int dma_clk; TYPE_1__* chip_data; struct tegra_dma_channel* channels; int reg_gen; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int nr_channels; scalar_t__ support_separate_wcount_reg; } ;


 int TEGRA_APBDMA_CHAN_AHBPTR ;
 int TEGRA_APBDMA_CHAN_AHBSEQ ;
 int TEGRA_APBDMA_CHAN_APBPTR ;
 int TEGRA_APBDMA_CHAN_APBSEQ ;
 int TEGRA_APBDMA_CHAN_CSR ;
 int TEGRA_APBDMA_CHAN_WCOUNT ;
 int TEGRA_APBDMA_GENERAL ;
 int clk_disable_unprepare (int ) ;
 struct tegra_dma* dev_get_drvdata (struct device*) ;
 void* tdc_read (struct tegra_dma_channel*,int ) ;
 int tdma_read (struct tegra_dma*,int ) ;

__attribute__((used)) static int tegra_dma_runtime_suspend(struct device *dev)
{
 struct tegra_dma *tdma = dev_get_drvdata(dev);
 int i;

 tdma->reg_gen = tdma_read(tdma, TEGRA_APBDMA_GENERAL);
 for (i = 0; i < tdma->chip_data->nr_channels; i++) {
  struct tegra_dma_channel *tdc = &tdma->channels[i];
  struct tegra_dma_channel_regs *ch_reg = &tdc->channel_reg;


  if (!tdc->config_init)
   continue;

  ch_reg->csr = tdc_read(tdc, TEGRA_APBDMA_CHAN_CSR);
  ch_reg->ahb_ptr = tdc_read(tdc, TEGRA_APBDMA_CHAN_AHBPTR);
  ch_reg->apb_ptr = tdc_read(tdc, TEGRA_APBDMA_CHAN_APBPTR);
  ch_reg->ahb_seq = tdc_read(tdc, TEGRA_APBDMA_CHAN_AHBSEQ);
  ch_reg->apb_seq = tdc_read(tdc, TEGRA_APBDMA_CHAN_APBSEQ);
  if (tdma->chip_data->support_separate_wcount_reg)
   ch_reg->wcount = tdc_read(tdc,
        TEGRA_APBDMA_CHAN_WCOUNT);
 }

 clk_disable_unprepare(tdma->dma_clk);

 return 0;
}
