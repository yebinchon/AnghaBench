
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_data {int device_flags; int xport; int reset_work; int flags; } ;
struct hid_device {int dummy; } ;


 int RMI_DEVICE ;
 int RMI_STARTED ;
 int cancel_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 struct rmi_data* hid_get_drvdata (struct hid_device*) ;
 int hid_hw_stop (struct hid_device*) ;
 int rmi_unregister_transport_device (int *) ;

__attribute__((used)) static void rmi_remove(struct hid_device *hdev)
{
 struct rmi_data *hdata = hid_get_drvdata(hdev);

 if (hdata->device_flags & RMI_DEVICE) {
  clear_bit(RMI_STARTED, &hdata->flags);
  cancel_work_sync(&hdata->reset_work);
  rmi_unregister_transport_device(&hdata->xport);
 }

 hid_hw_stop(hdev);
}
