
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct dcp_dma_desc {int dummy; } ;
struct dcp_async_ctx {int chan; } ;
struct dcp {int dev; scalar_t__ base; int * completion; TYPE_1__* coh; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {struct dcp_dma_desc* desc; } ;


 int DMA_TO_DEVICE ;
 int EINVAL ;
 int ETIMEDOUT ;
 scalar_t__ MXS_DCP_CH_N_CMDPTR (int const) ;
 scalar_t__ MXS_DCP_CH_N_SEMA (int const) ;
 scalar_t__ MXS_DCP_CH_N_STAT (int const) ;
 scalar_t__ MXS_DCP_CH_N_STAT_CLR (int const) ;
 scalar_t__ MXS_DCP_STAT ;
 int dev_err (int ,char*,int const,int) ;
 int dma_map_single (int ,struct dcp_dma_desc*,int,int ) ;
 int dma_unmap_single (int ,int,int,int ) ;
 struct dcp* global_sdcp ;
 int msecs_to_jiffies (int) ;
 int readl (scalar_t__) ;
 int reinit_completion (int *) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mxs_dcp_start_dma(struct dcp_async_ctx *actx)
{
 struct dcp *sdcp = global_sdcp;
 const int chan = actx->chan;
 uint32_t stat;
 unsigned long ret;
 struct dcp_dma_desc *desc = &sdcp->coh->desc[actx->chan];

 dma_addr_t desc_phys = dma_map_single(sdcp->dev, desc, sizeof(*desc),
           DMA_TO_DEVICE);

 reinit_completion(&sdcp->completion[chan]);


 writel(0xffffffff, sdcp->base + MXS_DCP_CH_N_STAT_CLR(chan));


 writel(desc_phys, sdcp->base + MXS_DCP_CH_N_CMDPTR(chan));


 writel(1, sdcp->base + MXS_DCP_CH_N_SEMA(chan));

 ret = wait_for_completion_timeout(&sdcp->completion[chan],
       msecs_to_jiffies(1000));
 if (!ret) {
  dev_err(sdcp->dev, "Channel %i timeout (DCP_STAT=0x%08x)\n",
   chan, readl(sdcp->base + MXS_DCP_STAT));
  return -ETIMEDOUT;
 }

 stat = readl(sdcp->base + MXS_DCP_CH_N_STAT(chan));
 if (stat & 0xff) {
  dev_err(sdcp->dev, "Channel %i error (CH_STAT=0x%08x)\n",
   chan, stat);
  return -EINVAL;
 }

 dma_unmap_single(sdcp->dev, desc_phys, sizeof(*desc), DMA_TO_DEVICE);

 return 0;
}
