
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct atkbd {unsigned int set; int extra; struct input_dev* dev; int write; } ;
typedef int ssize_t ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int atkbd_activate (struct atkbd*) ;
 int atkbd_reset_state (struct atkbd*) ;
 void* atkbd_select_set (struct atkbd*,unsigned char,int) ;
 int atkbd_set_device_attrs (struct atkbd*) ;
 int atkbd_set_keycode_table (struct atkbd*) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_unregister_device (struct input_dev*) ;
 int kstrtouint (char const*,int,unsigned int*) ;

__attribute__((used)) static ssize_t atkbd_set_set(struct atkbd *atkbd, const char *buf, size_t count)
{
 struct input_dev *old_dev, *new_dev;
 unsigned int value;
 int err;
 unsigned char old_set;
 bool old_extra;

 if (!atkbd->write)
  return -EIO;

 err = kstrtouint(buf, 10, &value);
 if (err)
  return err;

 if (value != 2 && value != 3)
  return -EINVAL;

 if (atkbd->set != value) {
  old_dev = atkbd->dev;
  old_extra = atkbd->extra;
  old_set = atkbd->set;

  new_dev = input_allocate_device();
  if (!new_dev)
   return -ENOMEM;

  atkbd->dev = new_dev;
  atkbd->set = atkbd_select_set(atkbd, value, atkbd->extra);
  atkbd_reset_state(atkbd);
  atkbd_activate(atkbd);
  atkbd_set_keycode_table(atkbd);
  atkbd_set_device_attrs(atkbd);

  err = input_register_device(atkbd->dev);
  if (err) {
   input_free_device(new_dev);

   atkbd->dev = old_dev;
   atkbd->set = atkbd_select_set(atkbd, old_set, old_extra);
   atkbd_set_keycode_table(atkbd);
   atkbd_set_device_attrs(atkbd);

   return err;
  }
  input_unregister_device(old_dev);
 }
 return count;
}
