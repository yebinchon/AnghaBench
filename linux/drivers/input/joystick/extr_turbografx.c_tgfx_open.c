
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tgfx {int sem; int timer; TYPE_1__* pd; int used; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int port; } ;


 scalar_t__ TGFX_REFRESH_TIME ;
 struct tgfx* input_get_drvdata (struct input_dev*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int parport_claim (TYPE_1__*) ;
 int parport_write_control (int ,int) ;

__attribute__((used)) static int tgfx_open(struct input_dev *dev)
{
 struct tgfx *tgfx = input_get_drvdata(dev);
 int err;

 err = mutex_lock_interruptible(&tgfx->sem);
 if (err)
  return err;

 if (!tgfx->used++) {
  parport_claim(tgfx->pd);
  parport_write_control(tgfx->pd->port, 0x04);
  mod_timer(&tgfx->timer, jiffies + TGFX_REFRESH_TIME);
 }

 mutex_unlock(&tgfx->sem);
 return 0;
}
