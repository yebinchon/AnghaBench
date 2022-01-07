
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_chan {int dummy; } ;
struct altera_mbox {scalar_t__ is_sender; } ;


 int EINVAL ;
 int altera_mbox_startup_receiver (struct mbox_chan*) ;
 int altera_mbox_startup_sender (struct mbox_chan*) ;
 struct altera_mbox* mbox_chan_to_altera_mbox (struct mbox_chan*) ;

__attribute__((used)) static int altera_mbox_startup(struct mbox_chan *chan)
{
 struct altera_mbox *mbox = mbox_chan_to_altera_mbox(chan);
 int ret = 0;

 if (!mbox)
  return -EINVAL;

 if (mbox->is_sender)
  ret = altera_mbox_startup_sender(chan);
 else
  ret = altera_mbox_startup_receiver(chan);

 return ret;
}
