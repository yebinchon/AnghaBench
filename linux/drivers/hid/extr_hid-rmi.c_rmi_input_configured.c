
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct input_dev* input; } ;
struct rmi_data {int device_flags; int flags; TYPE_1__ xport; } ;
struct input_dev {int dummy; } ;
struct hid_input {struct input_dev* input; } ;
struct hid_device {int dev; } ;


 int RMI_DEVICE ;
 int RMI_MODE_ATTN_REPORTS ;
 int RMI_STARTED ;
 int dev_err (int *,char*) ;
 int hid_dbg (struct hid_device*,char*) ;
 int hid_device_io_start (struct hid_device*) ;
 int hid_device_io_stop (struct hid_device*) ;
 struct rmi_data* hid_get_drvdata (struct hid_device*) ;
 int hid_hw_close (struct hid_device*) ;
 int hid_hw_open (struct hid_device*) ;
 int rmi_register_transport_device (TYPE_1__*) ;
 int rmi_set_mode (struct hid_device*,int ) ;
 int rmi_set_page (struct hid_device*,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int rmi_input_configured(struct hid_device *hdev, struct hid_input *hi)
{
 struct rmi_data *data = hid_get_drvdata(hdev);
 struct input_dev *input = hi->input;
 int ret = 0;

 if (!(data->device_flags & RMI_DEVICE))
  return 0;

 data->xport.input = input;

 hid_dbg(hdev, "Opening low level driver\n");
 ret = hid_hw_open(hdev);
 if (ret)
  return ret;


 hid_device_io_start(hdev);

 ret = rmi_set_mode(hdev, RMI_MODE_ATTN_REPORTS);
 if (ret < 0) {
  dev_err(&hdev->dev, "failed to set rmi mode\n");
  goto exit;
 }

 ret = rmi_set_page(hdev, 0);
 if (ret < 0) {
  dev_err(&hdev->dev, "failed to set page select to 0.\n");
  goto exit;
 }

 ret = rmi_register_transport_device(&data->xport);
 if (ret < 0) {
  dev_err(&hdev->dev, "failed to register transport driver\n");
  goto exit;
 }

 set_bit(RMI_STARTED, &data->flags);

exit:
 hid_device_io_stop(hdev);
 hid_hw_close(hdev);
 return ret;
}
