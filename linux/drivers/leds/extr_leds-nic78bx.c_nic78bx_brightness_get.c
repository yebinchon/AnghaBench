
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nic78bx_led {int bit; TYPE_1__* data; } ;
struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_2__ {int lock; int io_base; } ;


 int LED_OFF ;
 int inb (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct nic78bx_led* to_nic78bx_led (struct led_classdev*) ;

__attribute__((used)) static enum led_brightness nic78bx_brightness_get(struct led_classdev *cdev)
{
 struct nic78bx_led *nled = to_nic78bx_led(cdev);
 unsigned long flags;
 u8 value;

 spin_lock_irqsave(&nled->data->lock, flags);
 value = inb(nled->data->io_base);
 spin_unlock_irqrestore(&nled->data->lock, flags);

 return (value & nled->bit) ? 1 : LED_OFF;
}
