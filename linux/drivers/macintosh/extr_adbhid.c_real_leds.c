
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADB_WRITEREG (int,int ) ;
 int KEYB_LEDREG ;
 int adb_request (int *,int ,int ,int,int ,int,unsigned char) ;
 int led_request ;
 int leds_done ;
 int leds_lock ;
 int* leds_pending ;
 int leds_req_pending ;
 int* pending_devs ;
 size_t pending_led_end ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void real_leds(unsigned char leds, int device)
{
 unsigned long flags;

 spin_lock_irqsave(&leds_lock, flags);
 if (!leds_req_pending) {
  leds_req_pending = 1;
  spin_unlock_irqrestore(&leds_lock, flags);
  adb_request(&led_request, leds_done, 0, 3,
       ADB_WRITEREG(device, KEYB_LEDREG), 0xff, ~leds);
  return;
 } else {
  if (!(leds_pending[device] & 0x100)) {
   pending_devs[pending_led_end] = device;
   pending_led_end++;
   pending_led_end = (pending_led_end < 16) ? pending_led_end : 0;
  }
  leds_pending[device] = leds | 0x100;
 }
 spin_unlock_irqrestore(&leds_lock, flags);
}
