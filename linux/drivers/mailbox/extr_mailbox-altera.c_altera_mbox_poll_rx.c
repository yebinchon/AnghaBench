
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct altera_mbox {int rxpoll_timer; int chan; } ;


 int MBOX_POLLING_MS ;
 int altera_mbox_rx_data (int ) ;
 struct altera_mbox* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 struct altera_mbox* mbox ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int rxpoll_timer ;

__attribute__((used)) static void altera_mbox_poll_rx(struct timer_list *t)
{
 struct altera_mbox *mbox = from_timer(mbox, t, rxpoll_timer);

 altera_mbox_rx_data(mbox->chan);

 mod_timer(&mbox->rxpoll_timer,
    jiffies + msecs_to_jiffies(MBOX_POLLING_MS));
}
