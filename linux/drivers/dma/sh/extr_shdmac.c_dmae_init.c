
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_dmae_chan {int xmit_shift; } ;


 int DM_INC ;
 int LOG2_DEFAULT_XFER_SIZE ;
 int RS_AUTO ;
 int SM_INC ;
 int calc_xmit_shift (struct sh_dmae_chan*,int) ;
 int chcr_write (struct sh_dmae_chan*,int) ;
 int log2size_to_chcr (struct sh_dmae_chan*,int ) ;

__attribute__((used)) static void dmae_init(struct sh_dmae_chan *sh_chan)
{



 u32 chcr = DM_INC | SM_INC | RS_AUTO | log2size_to_chcr(sh_chan,
         LOG2_DEFAULT_XFER_SIZE);
 sh_chan->xmit_shift = calc_xmit_shift(sh_chan, chcr);
 chcr_write(sh_chan, chcr);
}
