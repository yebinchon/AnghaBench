
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int code; } ;
struct key_entry {scalar_t__ type; TYPE_1__ sw; int keycode; } ;
struct input_dev {size_t keycodemax; int setkeycode; int getkeycode; struct key_entry* keycode; int mscbit; int evbit; int keybit; int swbit; int dev; } ;


 int ENOMEM ;
 int EV_KEY ;
 int EV_MSC ;
 int EV_SW ;
 int GFP_KERNEL ;
 int KEY_UNKNOWN ;
 scalar_t__ KE_END ;



 int MSC_SCAN ;
 int __set_bit (int ,int ) ;
 struct key_entry* devm_kmemdup (int *,struct key_entry const*,size_t,int ) ;
 int sparse_keymap_getkeycode ;
 int sparse_keymap_setkeycode ;
 scalar_t__ test_bit (int ,int ) ;

int sparse_keymap_setup(struct input_dev *dev,
   const struct key_entry *keymap,
   int (*setup)(struct input_dev *, struct key_entry *))
{
 size_t map_size = 1;
 const struct key_entry *e;
 struct key_entry *map, *entry;
 int i;
 int error;

 for (e = keymap; e->type != KE_END; e++)
  map_size++;

 map = devm_kmemdup(&dev->dev, keymap, map_size * sizeof(*map),
      GFP_KERNEL);
 if (!map)
  return -ENOMEM;

 for (i = 0; i < map_size; i++) {
  entry = &map[i];

  if (setup) {
   error = setup(dev, entry);
   if (error)
    return error;
  }

  switch (entry->type) {
  case 130:
   __set_bit(EV_KEY, dev->evbit);
   __set_bit(entry->keycode, dev->keybit);
   break;

  case 129:
  case 128:
   __set_bit(EV_SW, dev->evbit);
   __set_bit(entry->sw.code, dev->swbit);
   break;
  }
 }

 if (test_bit(EV_KEY, dev->evbit)) {
  __set_bit(KEY_UNKNOWN, dev->keybit);
  __set_bit(EV_MSC, dev->evbit);
  __set_bit(MSC_SCAN, dev->mscbit);
 }

 dev->keycode = map;
 dev->keycodemax = map_size;
 dev->getkeycode = sparse_keymap_getkeycode;
 dev->setkeycode = sparse_keymap_setkeycode;

 return 0;
}
