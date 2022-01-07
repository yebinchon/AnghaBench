
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct picolcd_data {int lcd_brightness; } ;
struct backlight_device {int dummy; } ;


 struct picolcd_data* bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int picolcd_get_brightness(struct backlight_device *bdev)
{
 struct picolcd_data *data = bl_get_data(bdev);
 return data->lcd_brightness;
}
