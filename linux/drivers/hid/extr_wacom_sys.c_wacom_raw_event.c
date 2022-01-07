
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int data; } ;
struct wacom {TYPE_1__ wacom_wac; } ;
struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;


 int WACOM_PKGLEN_MAX ;
 struct wacom* hid_get_drvdata (struct hid_device*) ;
 int memcpy (int ,int *,int) ;
 int wacom_wac_irq (TYPE_1__*,int) ;
 scalar_t__ wacom_wac_pen_serial_enforce (struct hid_device*,struct hid_report*,int *,int) ;

__attribute__((used)) static int wacom_raw_event(struct hid_device *hdev, struct hid_report *report,
  u8 *raw_data, int size)
{
 struct wacom *wacom = hid_get_drvdata(hdev);

 if (size > WACOM_PKGLEN_MAX)
  return 1;

 if (wacom_wac_pen_serial_enforce(hdev, report, raw_data, size))
  return -1;

 memcpy(wacom->wacom_wac.data, raw_data, size);

 wacom_wac_irq(&wacom->wacom_wac, size);

 return 0;
}
