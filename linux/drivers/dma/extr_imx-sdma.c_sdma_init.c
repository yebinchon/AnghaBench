
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdma_engine {int clk_ratio; int context_phys; int dev; int clk_ipg; int clk_ahb; int * channel; scalar_t__ regs; TYPE_1__* drvdata; scalar_t__ channel_control; void* context; } ;
struct sdma_context_data {int dummy; } ;
struct sdma_channel_control {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int num_events; scalar_t__ check_ratio; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_DMA_CHANNELS ;
 scalar_t__ SDMA_CHN0ADDR ;
 scalar_t__ SDMA_CHNPRI_0 ;
 scalar_t__ SDMA_H_C0PTR ;
 scalar_t__ SDMA_H_CONFIG ;
 int SDMA_H_CONFIG_ACR ;
 scalar_t__ chnenbl_ofs (struct sdma_engine*,int) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 scalar_t__ clk_get_rate (int ) ;
 int dev_err (int ,char*,int) ;
 scalar_t__ dma_alloc_coherent (int ,int,int*,int ) ;
 int sdma_config_ownership (int *,int,int,int) ;
 int sdma_request_channel0 (struct sdma_engine*) ;
 int sdma_set_channel_priority (int *,int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int sdma_init(struct sdma_engine *sdma)
{
 int i, ret;
 dma_addr_t ccb_phys;

 ret = clk_enable(sdma->clk_ipg);
 if (ret)
  return ret;
 ret = clk_enable(sdma->clk_ahb);
 if (ret)
  goto disable_clk_ipg;

 if (sdma->drvdata->check_ratio &&
     (clk_get_rate(sdma->clk_ahb) == clk_get_rate(sdma->clk_ipg)))
  sdma->clk_ratio = 1;


 writel_relaxed(0, sdma->regs + SDMA_H_C0PTR);

 sdma->channel_control = dma_alloc_coherent(sdma->dev,
   MAX_DMA_CHANNELS * sizeof (struct sdma_channel_control) +
   sizeof(struct sdma_context_data),
   &ccb_phys, GFP_KERNEL);

 if (!sdma->channel_control) {
  ret = -ENOMEM;
  goto err_dma_alloc;
 }

 sdma->context = (void *)sdma->channel_control +
  MAX_DMA_CHANNELS * sizeof (struct sdma_channel_control);
 sdma->context_phys = ccb_phys +
  MAX_DMA_CHANNELS * sizeof (struct sdma_channel_control);


 for (i = 0; i < sdma->drvdata->num_events; i++)
  writel_relaxed(0, sdma->regs + chnenbl_ofs(sdma, i));


 for (i = 0; i < MAX_DMA_CHANNELS; i++)
  writel_relaxed(0, sdma->regs + SDMA_CHNPRI_0 + i * 4);

 ret = sdma_request_channel0(sdma);
 if (ret)
  goto err_dma_alloc;

 sdma_config_ownership(&sdma->channel[0], 0, 1, 0);


 writel_relaxed(0x4050, sdma->regs + SDMA_CHN0ADDR);


 if (sdma->clk_ratio)
  writel_relaxed(SDMA_H_CONFIG_ACR, sdma->regs + SDMA_H_CONFIG);
 else
  writel_relaxed(0, sdma->regs + SDMA_H_CONFIG);

 writel_relaxed(ccb_phys, sdma->regs + SDMA_H_C0PTR);


 sdma_set_channel_priority(&sdma->channel[0], 7);

 clk_disable(sdma->clk_ipg);
 clk_disable(sdma->clk_ahb);

 return 0;

err_dma_alloc:
 clk_disable(sdma->clk_ahb);
disable_clk_ipg:
 clk_disable(sdma->clk_ipg);
 dev_err(sdma->dev, "initialisation failed with %d\n", ret);
 return ret;
}
