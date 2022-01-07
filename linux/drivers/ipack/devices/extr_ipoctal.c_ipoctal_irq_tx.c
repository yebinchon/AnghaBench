
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int tx; } ;
struct TYPE_5__ {unsigned char* xmit_buf; } ;
struct ipoctal_channel {unsigned int pointer_write; scalar_t__ nb_bytes; int lock; TYPE_4__ stats; TYPE_3__* regs; TYPE_1__ tty_port; } ;
struct TYPE_6__ {int thr; } ;
struct TYPE_7__ {TYPE_2__ w; } ;


 unsigned int PAGE_SIZE ;
 int iowrite8 (unsigned char,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ipoctal_irq_tx(struct ipoctal_channel *channel)
{
 unsigned char value;
 unsigned int *pointer_write = &channel->pointer_write;

 if (channel->nb_bytes == 0)
  return;

 spin_lock(&channel->lock);
 value = channel->tty_port.xmit_buf[*pointer_write];
 iowrite8(value, &channel->regs->w.thr);
 channel->stats.tx++;
 (*pointer_write)++;
 *pointer_write = *pointer_write % PAGE_SIZE;
 channel->nb_bytes--;
 spin_unlock(&channel->lock);
}
