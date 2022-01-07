
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;
struct bigben_device {int worker; } ;


 int cancel_work_sync (int *) ;
 struct bigben_device* hid_get_drvdata (struct hid_device*) ;
 int hid_hw_close (struct hid_device*) ;
 int hid_hw_stop (struct hid_device*) ;

__attribute__((used)) static void bigben_remove(struct hid_device *hid)
{
 struct bigben_device *bigben = hid_get_drvdata(hid);

 cancel_work_sync(&bigben->worker);
 hid_hw_close(hid);
 hid_hw_stop(hid);
}
