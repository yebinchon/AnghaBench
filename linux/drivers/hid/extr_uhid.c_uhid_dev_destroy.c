
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhid_device {int running; int rd_data; int hid; int worker; int report_wait; } ;


 int EINVAL ;
 int cancel_work_sync (int *) ;
 int hid_destroy_device (int ) ;
 int kfree (int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int uhid_dev_destroy(struct uhid_device *uhid)
{
 if (!uhid->running)
  return -EINVAL;

 uhid->running = 0;
 wake_up_interruptible(&uhid->report_wait);

 cancel_work_sync(&uhid->worker);

 hid_destroy_device(uhid->hid);
 kfree(uhid->rd_data);

 return 0;
}
