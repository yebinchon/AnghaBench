
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int m_master; int p_master; } ;
struct dma_slave_config {int dst_maxburst; int src_maxburst; } ;
struct dw_dma_chan {scalar_t__ direction; TYPE_1__ dws; struct dma_slave_config dma_sconfig; } ;


 scalar_t__ DMA_DEV_TO_MEM ;
 scalar_t__ DMA_MEM_TO_DEV ;
 int DWC_CTLL_DMS (int ) ;
 int DWC_CTLL_DST_MSIZE (int ) ;
 int DWC_CTLL_LLP_D_EN ;
 int DWC_CTLL_LLP_S_EN ;
 int DWC_CTLL_SMS (int ) ;
 int DWC_CTLL_SRC_MSIZE (int ) ;
 int DW_DMA_MSIZE_16 ;
 int is_slave_direction (scalar_t__) ;

__attribute__((used)) static u32 dw_dma_prepare_ctllo(struct dw_dma_chan *dwc)
{
 struct dma_slave_config *sconfig = &dwc->dma_sconfig;
 bool is_slave = is_slave_direction(dwc->direction);
 u8 smsize = is_slave ? sconfig->src_maxburst : DW_DMA_MSIZE_16;
 u8 dmsize = is_slave ? sconfig->dst_maxburst : DW_DMA_MSIZE_16;
 u8 p_master = dwc->dws.p_master;
 u8 m_master = dwc->dws.m_master;
 u8 dms = (dwc->direction == DMA_MEM_TO_DEV) ? p_master : m_master;
 u8 sms = (dwc->direction == DMA_DEV_TO_MEM) ? p_master : m_master;

 return DWC_CTLL_LLP_D_EN | DWC_CTLL_LLP_S_EN |
        DWC_CTLL_DST_MSIZE(dmsize) | DWC_CTLL_SRC_MSIZE(smsize) |
        DWC_CTLL_DMS(dms) | DWC_CTLL_SMS(sms);
}
