
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msm_dsi_host {int dummy; } ;
struct mipi_dsi_host {int dummy; } ;


 int REG_DSI_DMA_BASE ;
 int REG_DSI_DMA_LEN ;
 int REG_DSI_TRIG_DMA ;
 int dsi_write (struct msm_dsi_host*,int ,int) ;
 struct msm_dsi_host* to_msm_dsi_host (struct mipi_dsi_host*) ;
 int wmb () ;

void msm_dsi_host_cmd_xfer_commit(struct mipi_dsi_host *host, u32 dma_base,
      u32 len)
{
 struct msm_dsi_host *msm_host = to_msm_dsi_host(host);

 dsi_write(msm_host, REG_DSI_DMA_BASE, dma_base);
 dsi_write(msm_host, REG_DSI_DMA_LEN, len);
 dsi_write(msm_host, REG_DSI_TRIG_DMA, 1);


 wmb();
}
