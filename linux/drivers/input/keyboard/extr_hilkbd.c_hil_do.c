
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 scalar_t__ hil_busy () ;
 int hil_command (unsigned char) ;
 TYPE_1__ hil_dev ;
 int hil_write_data (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void hil_do(unsigned char cmd, unsigned char *data, unsigned int len)
{
 unsigned long flags;

 spin_lock_irqsave(&hil_dev.lock, flags);
 while (hil_busy())
            ;
 hil_command(cmd);
 while (len--) {
  while (hil_busy())
             ;
  hil_write_data(*(data++));
 }
 spin_unlock_irqrestore(&hil_dev.lock, flags);
}
