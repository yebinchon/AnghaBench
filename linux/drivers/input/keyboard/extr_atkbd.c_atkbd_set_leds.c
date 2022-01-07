
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int led; } ;
struct atkbd {int ps2dev; scalar_t__ extra; struct input_dev* dev; } ;


 int ATKBD_CMD_EX_SETLEDS ;
 int ATKBD_CMD_SETLEDS ;
 int LED_CAPSL ;
 int LED_COMPOSE ;
 int LED_MISC ;
 int LED_MUTE ;
 int LED_NUML ;
 int LED_SCROLLL ;
 int LED_SLEEP ;
 int LED_SUSPEND ;
 scalar_t__ ps2_command (int *,unsigned char*,int ) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int atkbd_set_leds(struct atkbd *atkbd)
{
 struct input_dev *dev = atkbd->dev;
 unsigned char param[2];

 param[0] = (test_bit(LED_SCROLLL, dev->led) ? 1 : 0)
   | (test_bit(LED_NUML, dev->led) ? 2 : 0)
   | (test_bit(LED_CAPSL, dev->led) ? 4 : 0);
 if (ps2_command(&atkbd->ps2dev, param, ATKBD_CMD_SETLEDS))
  return -1;

 if (atkbd->extra) {
  param[0] = 0;
  param[1] = (test_bit(LED_COMPOSE, dev->led) ? 0x01 : 0)
    | (test_bit(LED_SLEEP, dev->led) ? 0x02 : 0)
    | (test_bit(LED_SUSPEND, dev->led) ? 0x04 : 0)
    | (test_bit(LED_MISC, dev->led) ? 0x10 : 0)
    | (test_bit(LED_MUTE, dev->led) ? 0x20 : 0);
  if (ps2_command(&atkbd->ps2dev, param, ATKBD_CMD_EX_SETLEDS))
   return -1;
 }

 return 0;
}
