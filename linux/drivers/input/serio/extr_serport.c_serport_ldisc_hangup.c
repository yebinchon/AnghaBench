
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ disc_data; } ;
struct serport {int wait; int lock; int flags; } ;


 int SERPORT_DEAD ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int serport_ldisc_hangup(struct tty_struct *tty)
{
 struct serport *serport = (struct serport *) tty->disc_data;
 unsigned long flags;

 spin_lock_irqsave(&serport->lock, flags);
 set_bit(SERPORT_DEAD, &serport->flags);
 spin_unlock_irqrestore(&serport->lock, flags);

 wake_up_interruptible(&serport->wait);
 return 0;
}
