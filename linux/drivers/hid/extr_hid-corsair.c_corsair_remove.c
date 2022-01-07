
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;


 int hid_hw_stop (struct hid_device*) ;
 int k90_cleanup_backlight (struct hid_device*) ;
 int k90_cleanup_macro_functions (struct hid_device*) ;

__attribute__((used)) static void corsair_remove(struct hid_device *dev)
{
 k90_cleanup_macro_functions(dev);
 k90_cleanup_backlight(dev);

 hid_hw_stop(dev);
}
