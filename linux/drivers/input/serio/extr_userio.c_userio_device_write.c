
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct userio_device {unsigned char* buf; size_t head; int tail; int waitq; int buf_lock; } ;
struct serio {struct userio_device* port_data; } ;
struct TYPE_2__ {int this_device; } ;


 int USERIO_BUFSIZE ;
 int dev_warn (int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__ userio_misc ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int userio_device_write(struct serio *id, unsigned char val)
{
 struct userio_device *userio = id->port_data;
 unsigned long flags;

 spin_lock_irqsave(&userio->buf_lock, flags);

 userio->buf[userio->head] = val;
 userio->head = (userio->head + 1) % USERIO_BUFSIZE;

 if (userio->head == userio->tail)
  dev_warn(userio_misc.this_device,
    "Buffer overflowed, userio client isn't keeping up");

 spin_unlock_irqrestore(&userio->buf_lock, flags);

 wake_up_interruptible(&userio->waitq);

 return 0;
}
