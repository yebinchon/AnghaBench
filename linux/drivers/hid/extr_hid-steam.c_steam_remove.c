
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct steam_device {int client_opened; int quirks; int work_connect; int client_hdev; } ;
struct hid_device {scalar_t__ group; } ;


 scalar_t__ HID_GROUP_STEAM ;
 int STEAM_QUIRK_WIRELESS ;
 int cancel_work_sync (int *) ;
 int hid_destroy_device (int ) ;
 struct steam_device* hid_get_drvdata (struct hid_device*) ;
 int hid_hw_close (struct hid_device*) ;
 int hid_hw_stop (struct hid_device*) ;
 int hid_info (struct hid_device*,char*) ;
 int steam_unregister (struct steam_device*) ;

__attribute__((used)) static void steam_remove(struct hid_device *hdev)
{
 struct steam_device *steam = hid_get_drvdata(hdev);

 if (!steam || hdev->group == HID_GROUP_STEAM) {
  hid_hw_stop(hdev);
  return;
 }

 hid_destroy_device(steam->client_hdev);
 steam->client_opened = 0;
 cancel_work_sync(&steam->work_connect);
 if (steam->quirks & STEAM_QUIRK_WIRELESS) {
  hid_info(hdev, "Steam wireless receiver disconnected");
 }
 hid_hw_close(hdev);
 hid_hw_stop(hdev);
 steam_unregister(steam);
}
