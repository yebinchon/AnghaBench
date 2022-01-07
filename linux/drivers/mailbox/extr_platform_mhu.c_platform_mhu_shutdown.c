
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_mhu_link {int irq; } ;
struct mbox_chan {struct platform_mhu_link* con_priv; } ;


 int free_irq (int ,struct mbox_chan*) ;

__attribute__((used)) static void platform_mhu_shutdown(struct mbox_chan *chan)
{
 struct platform_mhu_link *mlink = chan->con_priv;

 free_irq(mlink->irq, chan);
}
