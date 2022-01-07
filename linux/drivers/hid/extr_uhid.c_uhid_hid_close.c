
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhid_device {int dummy; } ;
struct hid_device {struct uhid_device* driver_data; } ;


 int UHID_CLOSE ;
 int uhid_queue_event (struct uhid_device*,int ) ;

__attribute__((used)) static void uhid_hid_close(struct hid_device *hid)
{
 struct uhid_device *uhid = hid->driver_data;

 uhid_queue_event(uhid, UHID_CLOSE);
}
