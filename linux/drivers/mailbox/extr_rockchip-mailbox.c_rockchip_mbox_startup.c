
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_chans; } ;
struct rockchip_mbox {scalar_t__ mbox_base; TYPE_2__ mbox; } ;
struct mbox_chan {TYPE_1__* mbox; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ MAILBOX_B2A_INTEN ;
 struct rockchip_mbox* dev_get_drvdata (int ) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int rockchip_mbox_startup(struct mbox_chan *chan)
{
 struct rockchip_mbox *mb = dev_get_drvdata(chan->mbox->dev);


 writel_relaxed((1 << mb->mbox.num_chans) - 1,
         mb->mbox_base + MAILBOX_B2A_INTEN);

 return 0;
}
