
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct steam_device {TYPE_1__* hdev; } ;
struct hid_device {struct steam_device* driver_data; } ;
struct TYPE_2__ {int dev_rsize; int dev_rdesc; } ;


 int hid_parse_report (struct hid_device*,int ,int ) ;

__attribute__((used)) static int steam_client_ll_parse(struct hid_device *hdev)
{
 struct steam_device *steam = hdev->driver_data;

 return hid_parse_report(hdev, steam->hdev->dev_rdesc,
   steam->hdev->dev_rsize);
}
