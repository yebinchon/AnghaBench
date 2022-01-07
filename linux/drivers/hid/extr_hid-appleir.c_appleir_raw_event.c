
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;
struct appleir {int prev_key_idx; int key_up_timer; int current_key; int lock; int * keymap; } ;
typedef int keyrepeat ;
typedef int keydown ;
typedef int flatbattery ;


 int HZ ;
 int battery_flat (struct appleir*) ;
 int get_key (int) ;
 struct appleir* hid_get_drvdata (struct hid_device*) ;
 scalar_t__ jiffies ;
 int key_down (struct hid_device*,struct appleir*,int ) ;
 int key_up (struct hid_device*,struct appleir*,int ) ;
 int memcmp (int*,int const*,int) ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int appleir_raw_event(struct hid_device *hid, struct hid_report *report,
  u8 *data, int len)
{
 struct appleir *appleir = hid_get_drvdata(hid);
 static const u8 keydown[] = { 0x25, 0x87, 0xee };
 static const u8 keyrepeat[] = { 0x26, };
 static const u8 flatbattery[] = { 0x25, 0x87, 0xe0 };
 unsigned long flags;

 if (len != 5)
  goto out;

 if (!memcmp(data, keydown, sizeof(keydown))) {
  int index;

  spin_lock_irqsave(&appleir->lock, flags);




  if (appleir->current_key)
   key_up(hid, appleir, appleir->current_key);


  if (appleir->prev_key_idx > 0)
   index = appleir->prev_key_idx;
  else
   index = get_key(data[4]);

  if (index >= 0) {
   appleir->current_key = appleir->keymap[index];

   key_down(hid, appleir, appleir->current_key);





   mod_timer(&appleir->key_up_timer, jiffies + HZ / 8);
   appleir->prev_key_idx = 0;
  } else

   appleir->prev_key_idx = -index;
  spin_unlock_irqrestore(&appleir->lock, flags);
  goto out;
 }

 appleir->prev_key_idx = 0;

 if (!memcmp(data, keyrepeat, sizeof(keyrepeat))) {
  key_down(hid, appleir, appleir->current_key);




  mod_timer(&appleir->key_up_timer, jiffies + HZ / 8);
  goto out;
 }

 if (!memcmp(data, flatbattery, sizeof(flatbattery))) {
  battery_flat(appleir);

 }

out:

 return 0;
}
