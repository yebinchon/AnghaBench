
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct picolcd_data {struct lcd_device* lcd; } ;
struct lcd_device {int dummy; } ;


 int lcd_device_unregister (struct lcd_device*) ;

void picolcd_exit_lcd(struct picolcd_data *data)
{
 struct lcd_device *ldev = data->lcd;

 data->lcd = ((void*)0);
 lcd_device_unregister(ldev);
}
