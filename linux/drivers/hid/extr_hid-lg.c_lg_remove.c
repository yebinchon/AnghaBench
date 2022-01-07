
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lg_drv_data {int quirks; } ;
struct hid_device {int dummy; } ;


 int LG_FF4 ;
 struct lg_drv_data* hid_get_drvdata (struct hid_device*) ;
 int hid_hw_stop (struct hid_device*) ;
 int kfree (struct lg_drv_data*) ;
 int lg4ff_deinit (struct hid_device*) ;

__attribute__((used)) static void lg_remove(struct hid_device *hdev)
{
 struct lg_drv_data *drv_data = hid_get_drvdata(hdev);
 if (drv_data->quirks & LG_FF4)
  lg4ff_deinit(hdev);
 hid_hw_stop(hdev);
 kfree(drv_data);
}
