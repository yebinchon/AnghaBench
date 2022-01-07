
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pad_input; int * touch_input; int * pen_input; } ;
struct wacom {int resources; TYPE_1__ wacom_wac; struct hid_device* hdev; } ;
struct hid_device {int dev; } ;


 int devres_release_group (int *,struct wacom*) ;

__attribute__((used)) static void wacom_release_resources(struct wacom *wacom)
{
 struct hid_device *hdev = wacom->hdev;

 if (!wacom->resources)
  return;

 devres_release_group(&hdev->dev, wacom);

 wacom->resources = 0;

 wacom->wacom_wac.pen_input = ((void*)0);
 wacom->wacom_wac.touch_input = ((void*)0);
 wacom->wacom_wac.pad_input = ((void*)0);
}
