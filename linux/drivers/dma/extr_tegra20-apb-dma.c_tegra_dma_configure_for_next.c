
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int apb_ptr; int ahb_ptr; int wcount; int csr; } ;
struct tegra_dma_sg_req {int configured; scalar_t__ words_xferred; TYPE_3__ ch_regs; } ;
struct tegra_dma_channel {TYPE_2__* tdma; } ;
struct TYPE_5__ {TYPE_1__* chip_data; } ;
struct TYPE_4__ {scalar_t__ support_separate_wcount_reg; } ;


 int TEGRA_APBDMA_CHAN_AHBPTR ;
 int TEGRA_APBDMA_CHAN_APBPTR ;
 int TEGRA_APBDMA_CHAN_CSR ;
 int TEGRA_APBDMA_CHAN_STATUS ;
 int TEGRA_APBDMA_CHAN_WCOUNT ;
 int TEGRA_APBDMA_CSR_ENB ;
 unsigned long TEGRA_APBDMA_STATUS_ISE_EOC ;
 int dev_err (int ,char*) ;
 int tdc2dev (struct tegra_dma_channel*) ;
 unsigned long tdc_read (struct tegra_dma_channel*,int ) ;
 int tdc_write (struct tegra_dma_channel*,int ,int) ;
 int tegra_dma_pause (struct tegra_dma_channel*,int) ;
 int tegra_dma_resume (struct tegra_dma_channel*) ;

__attribute__((used)) static void tegra_dma_configure_for_next(struct tegra_dma_channel *tdc,
  struct tegra_dma_sg_req *nsg_req)
{
 unsigned long status;
 tegra_dma_pause(tdc, 0);
 status = tdc_read(tdc, TEGRA_APBDMA_CHAN_STATUS);





 if (status & TEGRA_APBDMA_STATUS_ISE_EOC) {
  dev_err(tdc2dev(tdc),
   "Skipping new configuration as interrupt is pending\n");
  tegra_dma_resume(tdc);
  return;
 }


 tdc_write(tdc, TEGRA_APBDMA_CHAN_APBPTR, nsg_req->ch_regs.apb_ptr);
 tdc_write(tdc, TEGRA_APBDMA_CHAN_AHBPTR, nsg_req->ch_regs.ahb_ptr);
 if (tdc->tdma->chip_data->support_separate_wcount_reg)
  tdc_write(tdc, TEGRA_APBDMA_CHAN_WCOUNT,
      nsg_req->ch_regs.wcount);
 tdc_write(tdc, TEGRA_APBDMA_CHAN_CSR,
    nsg_req->ch_regs.csr | TEGRA_APBDMA_CSR_ENB);
 nsg_req->configured = 1;
 nsg_req->words_xferred = 0;

 tegra_dma_resume(tdc);
}
