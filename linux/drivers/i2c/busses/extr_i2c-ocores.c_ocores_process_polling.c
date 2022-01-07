
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocores_i2c {scalar_t__ state; int flags; } ;
typedef scalar_t__ irqreturn_t ;


 scalar_t__ IRQ_NONE ;
 int OCORES_FLAG_BROKEN_IRQ ;
 scalar_t__ STATE_DONE ;
 scalar_t__ STATE_ERROR ;
 scalar_t__ ocores_isr (int,struct ocores_i2c*) ;
 int ocores_poll_wait (struct ocores_i2c*) ;

__attribute__((used)) static void ocores_process_polling(struct ocores_i2c *i2c)
{
 while (1) {
  irqreturn_t ret;
  int err;

  err = ocores_poll_wait(i2c);
  if (err) {
   i2c->state = STATE_ERROR;
   break;
  }

  ret = ocores_isr(-1, i2c);
  if (ret == IRQ_NONE)
   break;
  else {
   if (i2c->flags & OCORES_FLAG_BROKEN_IRQ)
    if (i2c->state == STATE_DONE)
     break;
  }
 }
}
