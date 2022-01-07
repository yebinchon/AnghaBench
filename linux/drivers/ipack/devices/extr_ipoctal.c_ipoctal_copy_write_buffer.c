
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* xmit_buf; } ;
struct ipoctal_channel {unsigned int pointer_read; int nb_bytes; int lock; TYPE_1__ tty_port; } ;


 unsigned int PAGE_SIZE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int ipoctal_copy_write_buffer(struct ipoctal_channel *channel,
         const unsigned char *buf,
         int count)
{
 unsigned long flags;
 int i;
 unsigned int *pointer_read = &channel->pointer_read;


 for (i = 0; i < count; i++) {
  if (i <= (PAGE_SIZE - channel->nb_bytes)) {
   spin_lock_irqsave(&channel->lock, flags);
   channel->tty_port.xmit_buf[*pointer_read] = buf[i];
   *pointer_read = (*pointer_read + 1) % PAGE_SIZE;
   channel->nb_bytes++;
   spin_unlock_irqrestore(&channel->lock, flags);
  } else {
   break;
  }
 }
 return i;
}
