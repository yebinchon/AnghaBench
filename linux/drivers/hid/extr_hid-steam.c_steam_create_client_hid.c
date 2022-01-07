
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct hid_device {int group; int phys; int name; int country; int type; int version; int product; int vendor; int bus; TYPE_1__ dev; int * ll_driver; } ;


 int HID_GROUP_STEAM ;
 scalar_t__ IS_ERR (struct hid_device*) ;
 struct hid_device* hid_allocate_device () ;
 int steam_client_ll_driver ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static struct hid_device *steam_create_client_hid(struct hid_device *hdev)
{
 struct hid_device *client_hdev;

 client_hdev = hid_allocate_device();
 if (IS_ERR(client_hdev))
  return client_hdev;

 client_hdev->ll_driver = &steam_client_ll_driver;
 client_hdev->dev.parent = hdev->dev.parent;
 client_hdev->bus = hdev->bus;
 client_hdev->vendor = hdev->vendor;
 client_hdev->product = hdev->product;
 client_hdev->version = hdev->version;
 client_hdev->type = hdev->type;
 client_hdev->country = hdev->country;
 strlcpy(client_hdev->name, hdev->name,
   sizeof(client_hdev->name));
 strlcpy(client_hdev->phys, hdev->phys,
   sizeof(client_hdev->phys));





 client_hdev->group = HID_GROUP_STEAM;
 return client_hdev;
}
