
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adv7511 {scalar_t__ edid_read; int wq; TYPE_1__* i2c_main; } ;
struct TYPE_2__ {scalar_t__ irq; } ;


 int EIO ;
 int adv7511_irq_process (struct adv7511*,int) ;
 int msecs_to_jiffies (int) ;
 int msleep (int) ;
 int wait_event_interruptible_timeout (int ,scalar_t__,int ) ;

__attribute__((used)) static int adv7511_wait_for_edid(struct adv7511 *adv7511, int timeout)
{
 int ret;

 if (adv7511->i2c_main->irq) {
  ret = wait_event_interruptible_timeout(adv7511->wq,
    adv7511->edid_read, msecs_to_jiffies(timeout));
 } else {
  for (; timeout > 0; timeout -= 25) {
   ret = adv7511_irq_process(adv7511, 0);
   if (ret < 0)
    break;

   if (adv7511->edid_read)
    break;

   msleep(25);
  }
 }

 return adv7511->edid_read ? 0 : -EIO;
}
