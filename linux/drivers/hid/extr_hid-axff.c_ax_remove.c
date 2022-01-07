
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;


 int hid_hw_close (struct hid_device*) ;
 int hid_hw_stop (struct hid_device*) ;

__attribute__((used)) static void ax_remove(struct hid_device *hdev)
{
 hid_hw_close(hdev);
 hid_hw_stop(hdev);
}
