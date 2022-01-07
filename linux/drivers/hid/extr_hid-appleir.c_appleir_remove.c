
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;
struct appleir {int key_up_timer; } ;


 int del_timer_sync (int *) ;
 struct appleir* hid_get_drvdata (struct hid_device*) ;
 int hid_hw_stop (struct hid_device*) ;
 int kfree (struct appleir*) ;

__attribute__((used)) static void appleir_remove(struct hid_device *hid)
{
 struct appleir *appleir = hid_get_drvdata(hid);
 hid_hw_stop(hid);
 del_timer_sync(&appleir->key_up_timer);
 kfree(appleir);
}
