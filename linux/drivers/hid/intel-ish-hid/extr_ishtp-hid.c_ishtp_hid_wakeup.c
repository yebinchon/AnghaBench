
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_hid_data {int request_done; int hid_wait; } ;
struct hid_device {struct ishtp_hid_data* driver_data; } ;


 int wake_up_interruptible (int *) ;

void ishtp_hid_wakeup(struct hid_device *hid)
{
 struct ishtp_hid_data *hid_data = hid->driver_data;

 hid_data->request_done = 1;
 wake_up_interruptible(&hid_data->hid_wait);
}
