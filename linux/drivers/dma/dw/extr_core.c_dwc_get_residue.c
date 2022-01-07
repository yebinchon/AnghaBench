
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dw_dma_chan {int lock; int flags; } ;
struct dw_desc {scalar_t__ total_len; scalar_t__ residue; } ;
typedef int dma_cookie_t ;


 int DW_DMA_IS_SOFT_LLP ;
 struct dw_desc* dwc_find_desc (struct dw_dma_chan*,int ) ;
 struct dw_desc* dwc_first_active (struct dw_dma_chan*) ;
 scalar_t__ dwc_get_sent (struct dw_dma_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static u32 dwc_get_residue(struct dw_dma_chan *dwc, dma_cookie_t cookie)
{
 struct dw_desc *desc;
 unsigned long flags;
 u32 residue;

 spin_lock_irqsave(&dwc->lock, flags);

 desc = dwc_find_desc(dwc, cookie);
 if (desc) {
  if (desc == dwc_first_active(dwc)) {
   residue = desc->residue;
   if (test_bit(DW_DMA_IS_SOFT_LLP, &dwc->flags) && residue)
    residue -= dwc_get_sent(dwc);
  } else {
   residue = desc->total_len;
  }
 } else {
  residue = 0;
 }

 spin_unlock_irqrestore(&dwc->lock, flags);
 return residue;
}
