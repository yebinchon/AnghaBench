
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rmi_data {int input_report_size; int wait; int flags; int readReport; } ;
struct hid_device {int dummy; } ;


 int RMI_READ_DATA_PENDING ;
 int RMI_READ_REQUEST_PENDING ;
 int hid_dbg (struct hid_device*,char*) ;
 struct rmi_data* hid_get_drvdata (struct hid_device*) ;
 int memcpy (int ,int *,int) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int rmi_read_data_event(struct hid_device *hdev, u8 *data, int size)
{
 struct rmi_data *hdata = hid_get_drvdata(hdev);

 if (!test_bit(RMI_READ_REQUEST_PENDING, &hdata->flags)) {
  hid_dbg(hdev, "no read request pending\n");
  return 0;
 }

 memcpy(hdata->readReport, data, size < hdata->input_report_size ?
   size : hdata->input_report_size);
 set_bit(RMI_READ_DATA_PENDING, &hdata->flags);
 wake_up(&hdata->wait);

 return 1;
}
