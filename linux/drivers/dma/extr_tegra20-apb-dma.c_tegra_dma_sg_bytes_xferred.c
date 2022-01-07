
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_dma_sg_req {unsigned int req_len; long words_xferred; int node; } ;
struct tegra_dma_channel {TYPE_2__* tdma; int pending_sg_req; } ;
struct TYPE_4__ {TYPE_1__* chip_data; } ;
struct TYPE_3__ {scalar_t__ support_separate_wcount_reg; } ;


 int TEGRA_APBDMA_CHAN_STATUS ;
 int TEGRA_APBDMA_CHAN_WORD_TRANSFER ;
 unsigned long TEGRA_APBDMA_STATUS_ISE_EOC ;
 int WARN_ON_ONCE (int) ;
 unsigned long get_current_xferred_count (struct tegra_dma_channel*,struct tegra_dma_sg_req*,unsigned long) ;
 int list_is_first (int *,int *) ;
 unsigned long tdc_read (struct tegra_dma_channel*,int ) ;

__attribute__((used)) static unsigned int tegra_dma_sg_bytes_xferred(struct tegra_dma_channel *tdc,
            struct tegra_dma_sg_req *sg_req)
{
 unsigned long status, wcount = 0;

 if (!list_is_first(&sg_req->node, &tdc->pending_sg_req))
  return 0;

 if (tdc->tdma->chip_data->support_separate_wcount_reg)
  wcount = tdc_read(tdc, TEGRA_APBDMA_CHAN_WORD_TRANSFER);

 status = tdc_read(tdc, TEGRA_APBDMA_CHAN_STATUS);

 if (!tdc->tdma->chip_data->support_separate_wcount_reg)
  wcount = status;

 if (status & TEGRA_APBDMA_STATUS_ISE_EOC)
  return sg_req->req_len;

 wcount = get_current_xferred_count(tdc, sg_req, wcount);

 if (!wcount) {
  if (sg_req->words_xferred)
   wcount = sg_req->req_len - 4;

 } else if (wcount < sg_req->words_xferred) {
  WARN_ON_ONCE(1);

  wcount = sg_req->req_len - 4;
 } else {
  sg_req->words_xferred = wcount;
 }

 return wcount;
}
