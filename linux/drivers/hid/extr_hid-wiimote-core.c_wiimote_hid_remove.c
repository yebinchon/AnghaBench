
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiimote_data {int dummy; } ;
struct hid_device {int dummy; } ;


 struct wiimote_data* hid_get_drvdata (struct hid_device*) ;
 int hid_info (struct hid_device*,char*) ;
 int wiimote_destroy (struct wiimote_data*) ;

__attribute__((used)) static void wiimote_hid_remove(struct hid_device *hdev)
{
 struct wiimote_data *wdata = hid_get_drvdata(hdev);

 hid_info(hdev, "Device removed\n");
 wiimote_destroy(wdata);
}
