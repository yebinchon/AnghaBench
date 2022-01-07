
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct hid_device {int dummy; } ;
struct appleir {int lock; scalar_t__ current_key; struct hid_device* hid; } ;


 struct appleir* appleir ;
 struct appleir* from_timer (int ,struct timer_list*,int ) ;
 int key_up (struct hid_device*,struct appleir*,scalar_t__) ;
 int key_up_timer ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void key_up_tick(struct timer_list *t)
{
 struct appleir *appleir = from_timer(appleir, t, key_up_timer);
 struct hid_device *hid = appleir->hid;
 unsigned long flags;

 spin_lock_irqsave(&appleir->lock, flags);
 if (appleir->current_key) {
  key_up(hid, appleir, appleir->current_key);
  appleir->current_key = 0;
 }
 spin_unlock_irqrestore(&appleir->lock, flags);
}
