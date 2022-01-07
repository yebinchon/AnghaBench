
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_dmae_device {int chcr_ie_bit; } ;
struct sh_dmae_chan {int dummy; } ;


 int CHCR_DE ;
 int CHCR_TE ;
 int chcr_read (struct sh_dmae_chan*) ;
 int chcr_write (struct sh_dmae_chan*,int) ;
 struct sh_dmae_device* to_sh_dev (struct sh_dmae_chan*) ;

__attribute__((used)) static void dmae_halt(struct sh_dmae_chan *sh_chan)
{
 struct sh_dmae_device *shdev = to_sh_dev(sh_chan);
 u32 chcr = chcr_read(sh_chan);

 chcr &= ~(CHCR_DE | CHCR_TE | shdev->chcr_ie_bit);
 chcr_write(sh_chan, chcr);
}
