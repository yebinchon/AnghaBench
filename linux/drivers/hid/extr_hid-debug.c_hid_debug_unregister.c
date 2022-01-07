
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int debug_dir; int debug_events; int debug_rdesc; int debug_wait; scalar_t__ debug; } ;


 int debugfs_remove (int ) ;
 int wake_up_interruptible (int *) ;

void hid_debug_unregister(struct hid_device *hdev)
{
 hdev->debug = 0;
 wake_up_interruptible(&hdev->debug_wait);
 debugfs_remove(hdev->debug_rdesc);
 debugfs_remove(hdev->debug_events);
 debugfs_remove(hdev->debug_dir);
}
