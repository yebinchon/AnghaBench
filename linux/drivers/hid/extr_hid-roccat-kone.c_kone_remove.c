
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;


 int hid_hw_stop (struct hid_device*) ;
 int kone_remove_specials (struct hid_device*) ;

__attribute__((used)) static void kone_remove(struct hid_device *hdev)
{
 kone_remove_specials(hdev);
 hid_hw_stop(hdev);
}
