
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct picolcd_data {struct backlight_device* backlight; } ;
struct backlight_device {int dummy; } ;


 int backlight_device_unregister (struct backlight_device*) ;

void picolcd_exit_backlight(struct picolcd_data *data)
{
 struct backlight_device *bdev = data->backlight;

 data->backlight = ((void*)0);
 backlight_device_unregister(bdev);
}
