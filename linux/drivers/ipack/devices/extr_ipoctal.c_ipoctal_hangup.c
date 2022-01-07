
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {struct ipoctal_channel* driver_data; } ;
struct TYPE_3__ {int open_wait; } ;
struct ipoctal_channel {TYPE_1__ tty_port; int lock; scalar_t__ pointer_write; scalar_t__ pointer_read; scalar_t__ nb_bytes; } ;


 int ipoctal_reset_channel (struct ipoctal_channel*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_port_hangup (TYPE_1__*) ;
 int tty_port_set_initialized (TYPE_1__*,int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void ipoctal_hangup(struct tty_struct *tty)
{
 unsigned long flags;
 struct ipoctal_channel *channel = tty->driver_data;

 if (channel == ((void*)0))
  return;

 spin_lock_irqsave(&channel->lock, flags);
 channel->nb_bytes = 0;
 channel->pointer_read = 0;
 channel->pointer_write = 0;
 spin_unlock_irqrestore(&channel->lock, flags);

 tty_port_hangup(&channel->tty_port);

 ipoctal_reset_channel(channel);
 tty_port_set_initialized(&channel->tty_port, 0);
 wake_up_interruptible(&channel->tty_port.open_wait);
}
