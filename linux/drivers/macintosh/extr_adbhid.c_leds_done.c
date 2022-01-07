
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int dummy; } ;


 int ADB_WRITEREG (int,int ) ;
 int KEYB_LEDREG ;
 int adb_request (int *,void (*) (struct adb_request*),int ,int,int ,int,int) ;
 int led_request ;
 int leds_lock ;
 int* leds_pending ;
 int leds_req_pending ;
 int* pending_devs ;
 size_t pending_led_end ;
 size_t pending_led_start ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void leds_done(struct adb_request *req)
{
 int leds = 0, device = 0, pending = 0;
 unsigned long flags;

 spin_lock_irqsave(&leds_lock, flags);

 if (pending_led_start != pending_led_end) {
  device = pending_devs[pending_led_start];
  leds = leds_pending[device] & 0xff;
  leds_pending[device] = 0;
  pending_led_start++;
  pending_led_start = (pending_led_start < 16) ? pending_led_start : 0;
  pending = leds_req_pending;
 } else
  leds_req_pending = 0;
 spin_unlock_irqrestore(&leds_lock, flags);
 if (pending)
  adb_request(&led_request, leds_done, 0, 3,
       ADB_WRITEREG(device, KEYB_LEDREG), 0xff, ~leds);
}
