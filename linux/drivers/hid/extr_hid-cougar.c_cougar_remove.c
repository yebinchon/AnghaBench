
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_device {int dummy; } ;
struct cougar {scalar_t__ special_intf; TYPE_1__* shared; } ;
struct TYPE_2__ {int enabled; } ;


 struct cougar* hid_get_drvdata (struct hid_device*) ;
 int hid_hw_close (struct hid_device*) ;
 int hid_hw_stop (struct hid_device*) ;

__attribute__((used)) static void cougar_remove(struct hid_device *hdev)
{
 struct cougar *cougar = hid_get_drvdata(hdev);

 if (cougar) {

  if (cougar->shared)
   cougar->shared->enabled = 0;
  if (cougar->special_intf)
   hid_hw_close(hdev);
 }
 hid_hw_stop(hdev);
}
