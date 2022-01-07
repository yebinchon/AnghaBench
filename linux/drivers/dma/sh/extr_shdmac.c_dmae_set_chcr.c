
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_dmae_chan {int xmit_shift; } ;


 int EBUSY ;
 int calc_xmit_shift (struct sh_dmae_chan*,int ) ;
 int chcr_write (struct sh_dmae_chan*,int ) ;
 scalar_t__ dmae_is_busy (struct sh_dmae_chan*) ;

__attribute__((used)) static int dmae_set_chcr(struct sh_dmae_chan *sh_chan, u32 val)
{

 if (dmae_is_busy(sh_chan))
  return -EBUSY;

 sh_chan->xmit_shift = calc_xmit_shift(sh_chan, val);
 chcr_write(sh_chan, val);

 return 0;
}
