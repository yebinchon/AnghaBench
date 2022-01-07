
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rmi_data {int device_flags; } ;
struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;



 int RMI_DEVICE ;

 struct rmi_data* hid_get_drvdata (struct hid_device*) ;
 int rmi_check_sanity (struct hid_device*,int*,int) ;
 int rmi_input_event (struct hid_device*,int*,int) ;
 int rmi_read_data_event (struct hid_device*,int*,int) ;

__attribute__((used)) static int rmi_raw_event(struct hid_device *hdev,
  struct hid_report *report, u8 *data, int size)
{
 struct rmi_data *hdata = hid_get_drvdata(hdev);

 if (!(hdata->device_flags & RMI_DEVICE))
  return 0;

 size = rmi_check_sanity(hdev, data, size);
 if (size < 2)
  return 0;

 switch (data[0]) {
 case 128:
  return rmi_read_data_event(hdev, data, size);
 case 129:
  return rmi_input_event(hdev, data, size);
 default:
  return 1;
 }

 return 0;
}
