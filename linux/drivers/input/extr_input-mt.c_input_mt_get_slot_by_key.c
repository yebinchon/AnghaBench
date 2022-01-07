
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_mt_slot {int key; } ;
struct input_mt {int num_slots; struct input_mt_slot* slots; } ;
struct input_dev {struct input_mt* mt; } ;


 scalar_t__ input_mt_is_active (struct input_mt_slot*) ;
 int input_mt_is_used (struct input_mt*,struct input_mt_slot*) ;

int input_mt_get_slot_by_key(struct input_dev *dev, int key)
{
 struct input_mt *mt = dev->mt;
 struct input_mt_slot *s;

 if (!mt)
  return -1;

 for (s = mt->slots; s != mt->slots + mt->num_slots; s++)
  if (input_mt_is_active(s) && s->key == key)
   return s - mt->slots;

 for (s = mt->slots; s != mt->slots + mt->num_slots; s++)
  if (!input_mt_is_active(s) && !input_mt_is_used(mt, s)) {
   s->key = key;
   return s - mt->slots;
  }

 return -1;
}
