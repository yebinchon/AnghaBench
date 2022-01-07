
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct edd_device {int dummy; } ;


 int kfree (struct edd_device*) ;
 struct edd_device* to_edd_device (struct kobject*) ;

__attribute__((used)) static void edd_release(struct kobject * kobj)
{
 struct edd_device * dev = to_edd_device(kobj);
 kfree(dev);
}
