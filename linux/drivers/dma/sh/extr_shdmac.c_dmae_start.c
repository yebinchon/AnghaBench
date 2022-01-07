
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sh_dmae_device {int chcr_ie_bit; TYPE_1__* pdata; } ;
struct sh_dmae_chan {int dummy; } ;
struct TYPE_2__ {scalar_t__ needs_tend_set; } ;


 int CHCR_DE ;
 int CHCR_TE ;
 int TEND ;
 int chcr_read (struct sh_dmae_chan*) ;
 int chcr_write (struct sh_dmae_chan*,int) ;
 int sh_dmae_writel (struct sh_dmae_chan*,int,int ) ;
 struct sh_dmae_device* to_sh_dev (struct sh_dmae_chan*) ;

__attribute__((used)) static void dmae_start(struct sh_dmae_chan *sh_chan)
{
 struct sh_dmae_device *shdev = to_sh_dev(sh_chan);
 u32 chcr = chcr_read(sh_chan);

 if (shdev->pdata->needs_tend_set)
  sh_dmae_writel(sh_chan, 0xFFFFFFFF, TEND);

 chcr |= CHCR_DE | shdev->chcr_ie_bit;
 chcr_write(sh_chan, chcr & ~CHCR_TE);
}
