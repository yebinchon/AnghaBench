
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenkbd_key {int pressed; int keycode; } ;
struct xenkbd_info {struct input_dev* kbd; struct input_dev* ptr; } ;
struct input_dev {int key; int keybit; } ;


 int EV_KEY ;
 int input_event (struct input_dev*,int ,int ,int) ;
 int input_sync (struct input_dev*) ;
 int pr_warn (char*,int ) ;
 scalar_t__ test_bit (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void xenkbd_handle_key_event(struct xenkbd_info *info,
        struct xenkbd_key *key)
{
 struct input_dev *dev;
 int value = key->pressed;

 if (test_bit(key->keycode, info->ptr->keybit)) {
  dev = info->ptr;
 } else if (test_bit(key->keycode, info->kbd->keybit)) {
  dev = info->kbd;
  if (key->pressed && test_bit(key->keycode, info->kbd->key))
   value = 2;
 } else {
  pr_warn("unhandled keycode 0x%x\n", key->keycode);
  return;
 }

 if (unlikely(!dev))
  return;

 input_event(dev, EV_KEY, key->keycode, value);
 input_sync(dev);
}
