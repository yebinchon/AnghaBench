
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device_id {scalar_t__ driver_data; } ;
struct hid_device {int dummy; } ;


 int ENOMEM ;
 scalar_t__ GFRM100 ;
 int GFRM100_SEARCH_KEY_REPORT_ID ;
 int HID_CONNECT_DEFAULT ;
 int HID_INPUT_REPORT ;
 int hid_hw_start (struct hid_device*,int ) ;
 int hid_parse (struct hid_device*) ;
 int hid_register_report (struct hid_device*,int ,int ,int ) ;
 int hid_set_drvdata (struct hid_device*,void*) ;

__attribute__((used)) static int gfrm_probe(struct hid_device *hdev, const struct hid_device_id *id)
{
 int ret;

 hid_set_drvdata(hdev, (void *) id->driver_data);

 ret = hid_parse(hdev);
 if (ret)
  goto done;

 if (id->driver_data == GFRM100) {





  if (!hid_register_report(hdev, HID_INPUT_REPORT,
      GFRM100_SEARCH_KEY_REPORT_ID, 0)) {
   ret = -ENOMEM;
   goto done;
  }
 }

 ret = hid_hw_start(hdev, HID_CONNECT_DEFAULT);
done:
 return ret;
}
