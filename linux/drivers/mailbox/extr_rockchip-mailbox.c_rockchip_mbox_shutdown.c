
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rockchip_mbox_chan {size_t idx; int * msg; } ;
struct rockchip_mbox {struct rockchip_mbox_chan* chans; scalar_t__ mbox_base; } ;
struct mbox_chan {TYPE_1__* mbox; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ MAILBOX_B2A_INTEN ;
 struct rockchip_mbox* dev_get_drvdata (int ) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void rockchip_mbox_shutdown(struct mbox_chan *chan)
{
 struct rockchip_mbox *mb = dev_get_drvdata(chan->mbox->dev);
 struct rockchip_mbox_chan *chans = mb->chans;


 writel_relaxed(0, mb->mbox_base + MAILBOX_B2A_INTEN);

 mb->chans[chans->idx].msg = ((void*)0);
}
