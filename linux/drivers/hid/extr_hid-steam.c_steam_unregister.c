
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct steam_device {scalar_t__* serial_no; int list; int hdev; } ;


 int hid_info (int ,char*,scalar_t__*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int steam_battery_unregister (struct steam_device*) ;
 int steam_devices_lock ;
 int steam_input_unregister (struct steam_device*) ;

__attribute__((used)) static void steam_unregister(struct steam_device *steam)
{
 steam_battery_unregister(steam);
 steam_input_unregister(steam);
 if (steam->serial_no[0]) {
  hid_info(steam->hdev, "Steam Controller '%s' disconnected",
    steam->serial_no);
  mutex_lock(&steam_devices_lock);
  list_del(&steam->list);
  mutex_unlock(&steam_devices_lock);
  steam->serial_no[0] = 0;
 }
}
