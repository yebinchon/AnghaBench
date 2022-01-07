
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct steam_device {int quirks; int client_opened; int mutex; int list; int * serial_no; int hdev; } ;


 int STEAM_QUIRK_WIRELESS ;
 int hid_info (int ,char*,int *) ;
 int list_add (int *,int *) ;
 int lizard_mode ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int steam_battery_register (struct steam_device*) ;
 int steam_devices ;
 int steam_devices_lock ;
 scalar_t__ steam_get_serial (struct steam_device*) ;
 int steam_input_register (struct steam_device*) ;
 int steam_set_lizard_mode (struct steam_device*,int ) ;
 int strlcpy (int *,char*,int) ;

__attribute__((used)) static int steam_register(struct steam_device *steam)
{
 int ret;
 bool client_opened;







 if (!steam->serial_no[0]) {




  mutex_lock(&steam->mutex);
  if (steam_get_serial(steam) < 0)
   strlcpy(steam->serial_no, "XXXXXXXXXX",
     sizeof(steam->serial_no));
  mutex_unlock(&steam->mutex);

  hid_info(steam->hdev, "Steam Controller '%s' connected",
    steam->serial_no);


  if (steam->quirks & STEAM_QUIRK_WIRELESS)
   steam_battery_register(steam);

  mutex_lock(&steam_devices_lock);
  list_add(&steam->list, &steam_devices);
  mutex_unlock(&steam_devices_lock);
 }

 mutex_lock(&steam->mutex);
 client_opened = steam->client_opened;
 if (!client_opened)
  steam_set_lizard_mode(steam, lizard_mode);
 mutex_unlock(&steam->mutex);

 if (!client_opened)
  ret = steam_input_register(steam);
 else
  ret = 0;

 return ret;
}
