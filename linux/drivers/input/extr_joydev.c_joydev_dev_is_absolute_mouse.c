
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bustype; } ;
struct input_dev {TYPE_1__ id; int keybit; int absbit; int evbit; } ;


 scalar_t__ ABS_CNT ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int BUILD_BUG_ON (int) ;
 scalar_t__ BUS_AMIGA ;
 int DECLARE_BITMAP (int ,scalar_t__) ;
 int EV_ABS ;
 scalar_t__ EV_CNT ;
 int EV_KEY ;
 int EV_MSC ;
 int EV_REL ;
 int EV_SYN ;
 scalar_t__ KEY_CNT ;
 int __set_bit (int ,int ) ;
 scalar_t__ bitmap_equal (int ,int ,scalar_t__) ;
 int bitmap_zero (int ,scalar_t__) ;
 int jd_scratch ;

__attribute__((used)) static bool joydev_dev_is_absolute_mouse(struct input_dev *dev)
{
 DECLARE_BITMAP(jd_scratch, KEY_CNT);
 bool ev_match = 0;

 BUILD_BUG_ON(ABS_CNT > KEY_CNT || EV_CNT > KEY_CNT);
 bitmap_zero(jd_scratch, EV_CNT);

 __set_bit(EV_ABS, jd_scratch);
 __set_bit(EV_KEY, jd_scratch);
 __set_bit(EV_SYN, jd_scratch);
 if (bitmap_equal(jd_scratch, dev->evbit, EV_CNT))
  ev_match = 1;


 __set_bit(EV_MSC, jd_scratch);
 if (bitmap_equal(jd_scratch, dev->evbit, EV_CNT))
  ev_match = 1;


 __set_bit(EV_REL, jd_scratch);
 if (bitmap_equal(jd_scratch, dev->evbit, EV_CNT))
  ev_match = 1;

 if (!ev_match)
  return 0;

 bitmap_zero(jd_scratch, ABS_CNT);
 __set_bit(ABS_X, jd_scratch);
 __set_bit(ABS_Y, jd_scratch);
 if (!bitmap_equal(dev->absbit, jd_scratch, ABS_CNT))
  return 0;

 bitmap_zero(jd_scratch, KEY_CNT);
 __set_bit(BTN_LEFT, jd_scratch);
 __set_bit(BTN_RIGHT, jd_scratch);
 __set_bit(BTN_MIDDLE, jd_scratch);

 if (!bitmap_equal(dev->keybit, jd_scratch, KEY_CNT))
  return 0;





 if (dev->id.bustype == BUS_AMIGA)
  return 0;

 return 1;
}
