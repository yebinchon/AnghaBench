
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dst_id; int src_id; } ;
struct dw_dma_chan {TYPE_1__ dws; } ;


 int CFG_HI ;
 int CFG_LO ;
 int IDMA32C_CFGH_DST_PER (int) ;
 int IDMA32C_CFGH_DST_PER_EXT (int) ;
 int IDMA32C_CFGH_SRC_PER (int) ;
 int IDMA32C_CFGH_SRC_PER_EXT (int) ;
 int IDMA32C_CFGL_DST_BURST_ALIGN ;
 int IDMA32C_CFGL_SRC_BURST_ALIGN ;
 int channel_writel (struct dw_dma_chan*,int ,int) ;

__attribute__((used)) static void idma32_initialize_chan(struct dw_dma_chan *dwc)
{
 u32 cfghi = 0;
 u32 cfglo = 0;


 cfglo |= IDMA32C_CFGL_DST_BURST_ALIGN | IDMA32C_CFGL_SRC_BURST_ALIGN;


 cfghi |= IDMA32C_CFGH_DST_PER(dwc->dws.dst_id & 0xf);
 cfghi |= IDMA32C_CFGH_SRC_PER(dwc->dws.src_id & 0xf);


 cfghi |= IDMA32C_CFGH_DST_PER_EXT(dwc->dws.dst_id >> 4 & 0x3);
 cfghi |= IDMA32C_CFGH_SRC_PER_EXT(dwc->dws.src_id >> 4 & 0x3);

 channel_writel(dwc, CFG_LO, cfglo);
 channel_writel(dwc, CFG_HI, cfghi);
}
