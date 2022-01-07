
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidraw {int dummy; } ;
struct hid_device {struct hidraw* hidraw; } ;


 int drop_ref (struct hidraw*,int) ;
 int minors_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void hidraw_disconnect(struct hid_device *hid)
{
 struct hidraw *hidraw = hid->hidraw;

 mutex_lock(&minors_lock);

 drop_ref(hidraw, 1);

 mutex_unlock(&minors_lock);
}
