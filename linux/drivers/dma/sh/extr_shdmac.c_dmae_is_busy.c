
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_dmae_chan {int dummy; } ;


 int CHCR_DE ;
 int CHCR_TE ;
 int chcr_read (struct sh_dmae_chan*) ;

__attribute__((used)) static bool dmae_is_busy(struct sh_dmae_chan *sh_chan)
{
 u32 chcr = chcr_read(sh_chan);

 if ((chcr & (CHCR_DE | CHCR_TE)) == CHCR_DE)
  return 1;

 return 0;
}
