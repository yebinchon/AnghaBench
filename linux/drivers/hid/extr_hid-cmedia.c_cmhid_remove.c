
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;
struct cmhid {int dummy; } ;


 struct cmhid* hid_get_drvdata (struct hid_device*) ;
 int hid_hw_stop (struct hid_device*) ;
 int kfree (struct cmhid*) ;

__attribute__((used)) static void cmhid_remove(struct hid_device *hid)
{
 struct cmhid *cm = hid_get_drvdata(hid);

 hid_hw_stop(hid);
 kfree(cm);
}
