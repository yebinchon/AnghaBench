
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int maxcollection; struct hid_collection* collection; } ;
struct hid_collection {scalar_t__ type; } ;


 scalar_t__ HID_COLLECTION_APPLICATION ;
 scalar_t__ HID_COLLECTION_PHYSICAL ;

__attribute__((used)) static int sensor_hub_get_physical_device_count(struct hid_device *hdev)
{
 int i;
 int count = 0;

 for (i = 0; i < hdev->maxcollection; ++i) {
  struct hid_collection *collection = &hdev->collection[i];
  if (collection->type == HID_COLLECTION_PHYSICAL ||
      collection->type == HID_COLLECTION_APPLICATION)
   ++count;
 }

 return count;
}
