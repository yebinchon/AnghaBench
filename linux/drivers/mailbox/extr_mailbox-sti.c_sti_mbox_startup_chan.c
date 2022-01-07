
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_chan {int dummy; } ;


 int sti_mbox_clear_irq (struct mbox_chan*) ;
 int sti_mbox_enable_channel (struct mbox_chan*) ;

__attribute__((used)) static int sti_mbox_startup_chan(struct mbox_chan *chan)
{
 sti_mbox_clear_irq(chan);
 sti_mbox_enable_channel(chan);

 return 0;
}
