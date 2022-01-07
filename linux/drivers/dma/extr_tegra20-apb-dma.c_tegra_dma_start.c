
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_dma_channel_regs {int csr; int apb_seq; int apb_ptr; int ahb_seq; int ahb_ptr; int wcount; } ;
struct tegra_dma_sg_req {struct tegra_dma_channel_regs ch_regs; } ;
struct tegra_dma_channel {TYPE_2__* tdma; } ;
struct TYPE_4__ {TYPE_1__* chip_data; } ;
struct TYPE_3__ {scalar_t__ support_separate_wcount_reg; } ;


 int TEGRA_APBDMA_CHAN_AHBPTR ;
 int TEGRA_APBDMA_CHAN_AHBSEQ ;
 int TEGRA_APBDMA_CHAN_APBPTR ;
 int TEGRA_APBDMA_CHAN_APBSEQ ;
 int TEGRA_APBDMA_CHAN_CSR ;
 int TEGRA_APBDMA_CHAN_WCOUNT ;
 int TEGRA_APBDMA_CSR_ENB ;
 int tdc_write (struct tegra_dma_channel*,int ,int) ;

__attribute__((used)) static void tegra_dma_start(struct tegra_dma_channel *tdc,
  struct tegra_dma_sg_req *sg_req)
{
 struct tegra_dma_channel_regs *ch_regs = &sg_req->ch_regs;

 tdc_write(tdc, TEGRA_APBDMA_CHAN_CSR, ch_regs->csr);
 tdc_write(tdc, TEGRA_APBDMA_CHAN_APBSEQ, ch_regs->apb_seq);
 tdc_write(tdc, TEGRA_APBDMA_CHAN_APBPTR, ch_regs->apb_ptr);
 tdc_write(tdc, TEGRA_APBDMA_CHAN_AHBSEQ, ch_regs->ahb_seq);
 tdc_write(tdc, TEGRA_APBDMA_CHAN_AHBPTR, ch_regs->ahb_ptr);
 if (tdc->tdma->chip_data->support_separate_wcount_reg)
  tdc_write(tdc, TEGRA_APBDMA_CHAN_WCOUNT, ch_regs->wcount);


 tdc_write(tdc, TEGRA_APBDMA_CHAN_CSR,
    ch_regs->csr | TEGRA_APBDMA_CSR_ENB);
}
