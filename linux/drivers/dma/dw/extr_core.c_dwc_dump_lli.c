
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_dma_chan {int chan; } ;
struct dw_desc {int dummy; } ;


 int chan2dev (int *) ;
 int ctlhi ;
 int ctllo ;
 int dar ;
 int dev_crit (int ,char*,int ,int ,int ,int ,int ) ;
 int lli_read (struct dw_desc*,int ) ;
 int llp ;
 int sar ;

__attribute__((used)) static inline void dwc_dump_lli(struct dw_dma_chan *dwc, struct dw_desc *desc)
{
 dev_crit(chan2dev(&dwc->chan), "  desc: s0x%x d0x%x l0x%x c0x%x:%x\n",
   lli_read(desc, sar),
   lli_read(desc, dar),
   lli_read(desc, llp),
   lli_read(desc, ctlhi),
   lli_read(desc, ctllo));
}
