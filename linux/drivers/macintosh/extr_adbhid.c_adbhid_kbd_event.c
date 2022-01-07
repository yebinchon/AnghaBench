
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int led; } ;
struct adbhid {int id; } ;



 int LED_CAPSL ;
 int LED_NUML ;
 int LED_SCROLLL ;
 struct adbhid* input_get_drvdata (struct input_dev*) ;
 int real_leds (unsigned char,int ) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static int adbhid_kbd_event(struct input_dev *dev, unsigned int type, unsigned int code, int value)
{
 struct adbhid *adbhid = input_get_drvdata(dev);
 unsigned char leds;

 switch (type) {
 case 128:
  leds = (test_bit(LED_SCROLLL, dev->led) ? 4 : 0) |
   (test_bit(LED_NUML, dev->led) ? 1 : 0) |
   (test_bit(LED_CAPSL, dev->led) ? 2 : 0);
  real_leds(leds, adbhid->id);
  return 0;
 }

 return -1;
}
