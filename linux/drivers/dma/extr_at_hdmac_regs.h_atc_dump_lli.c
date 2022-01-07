
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at_lli {int dscr; int ctrlb; int ctrla; int daddr; int saddr; } ;
struct at_dma_chan {int chan_common; } ;


 int chan2dev (int *) ;
 int dev_crit (int ,char*,int *,int *,int ,int ,int *) ;

__attribute__((used)) static void atc_dump_lli(struct at_dma_chan *atchan, struct at_lli *lli)
{
 dev_crit(chan2dev(&atchan->chan_common),
   "desc: s%pad d%pad ctrl0x%x:0x%x l%pad\n",
   &lli->saddr, &lli->daddr,
   lli->ctrla, lli->ctrlb, &lli->dscr);
}
