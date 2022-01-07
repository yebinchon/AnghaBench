
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lenovo_drvdata_cptkbd {int sensitivity; int fn_lock; } ;
struct hid_device {int dummy; } ;


 int hid_err (struct hid_device*,char*,int) ;
 struct lenovo_drvdata_cptkbd* hid_get_drvdata (struct hid_device*) ;
 int lenovo_send_cmd_cptkbd (struct hid_device*,int,int ) ;

__attribute__((used)) static void lenovo_features_set_cptkbd(struct hid_device *hdev)
{
 int ret;
 struct lenovo_drvdata_cptkbd *cptkbd_data = hid_get_drvdata(hdev);

 ret = lenovo_send_cmd_cptkbd(hdev, 0x05, cptkbd_data->fn_lock);
 if (ret)
  hid_err(hdev, "Fn-lock setting failed: %d\n", ret);

 ret = lenovo_send_cmd_cptkbd(hdev, 0x02, cptkbd_data->sensitivity);
 if (ret)
  hid_err(hdev, "Sensitivity setting failed: %d\n", ret);
}
