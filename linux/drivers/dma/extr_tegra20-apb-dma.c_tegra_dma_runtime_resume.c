
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_dma_channel_regs {int wcount; int apb_seq; int apb_ptr; int ahb_seq; int ahb_ptr; int csr; } ;
struct tegra_dma_channel {int config_init; struct tegra_dma_channel_regs channel_reg; } ;
struct tegra_dma {int reg_gen; TYPE_1__* chip_data; struct tegra_dma_channel* channels; int dma_clk; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int nr_channels; scalar_t__ support_separate_wcount_reg; } ;


 int TEGRA_APBDMA_CHAN_AHBPTR ;
 int TEGRA_APBDMA_CHAN_AHBSEQ ;
 int TEGRA_APBDMA_CHAN_APBPTR ;
 int TEGRA_APBDMA_CHAN_APBSEQ ;
 int TEGRA_APBDMA_CHAN_CSR ;
 int TEGRA_APBDMA_CHAN_WCOUNT ;
 int TEGRA_APBDMA_CONTROL ;
 int TEGRA_APBDMA_CSR_ENB ;
 int TEGRA_APBDMA_GENERAL ;
 int TEGRA_APBDMA_IRQ_MASK_SET ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*,int) ;
 struct tegra_dma* dev_get_drvdata (struct device*) ;
 int tdc_write (struct tegra_dma_channel*,int ,int) ;
 int tdma_write (struct tegra_dma*,int ,int) ;

__attribute__((used)) static int tegra_dma_runtime_resume(struct device *dev)
{
 struct tegra_dma *tdma = dev_get_drvdata(dev);
 int i, ret;

 ret = clk_prepare_enable(tdma->dma_clk);
 if (ret < 0) {
  dev_err(dev, "clk_enable failed: %d\n", ret);
  return ret;
 }

 tdma_write(tdma, TEGRA_APBDMA_GENERAL, tdma->reg_gen);
 tdma_write(tdma, TEGRA_APBDMA_CONTROL, 0);
 tdma_write(tdma, TEGRA_APBDMA_IRQ_MASK_SET, 0xFFFFFFFFul);

 for (i = 0; i < tdma->chip_data->nr_channels; i++) {
  struct tegra_dma_channel *tdc = &tdma->channels[i];
  struct tegra_dma_channel_regs *ch_reg = &tdc->channel_reg;


  if (!tdc->config_init)
   continue;

  if (tdma->chip_data->support_separate_wcount_reg)
   tdc_write(tdc, TEGRA_APBDMA_CHAN_WCOUNT,
      ch_reg->wcount);
  tdc_write(tdc, TEGRA_APBDMA_CHAN_APBSEQ, ch_reg->apb_seq);
  tdc_write(tdc, TEGRA_APBDMA_CHAN_APBPTR, ch_reg->apb_ptr);
  tdc_write(tdc, TEGRA_APBDMA_CHAN_AHBSEQ, ch_reg->ahb_seq);
  tdc_write(tdc, TEGRA_APBDMA_CHAN_AHBPTR, ch_reg->ahb_ptr);
  tdc_write(tdc, TEGRA_APBDMA_CHAN_CSR,
   (ch_reg->csr & ~TEGRA_APBDMA_CSR_ENB));
 }

 return 0;
}
