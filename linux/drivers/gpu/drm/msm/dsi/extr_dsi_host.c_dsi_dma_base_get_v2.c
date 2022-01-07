
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct msm_dsi_host {int tx_buf_paddr; } ;


 int EINVAL ;

int dsi_dma_base_get_v2(struct msm_dsi_host *msm_host, uint64_t *dma_base)
{
 if (!dma_base)
  return -EINVAL;

 *dma_base = msm_host->tx_buf_paddr;
 return 0;
}
