
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct picolcd_data {int lcd_contrast; } ;
struct lcd_device {int dummy; } ;


 struct picolcd_data* lcd_get_data (struct lcd_device*) ;

__attribute__((used)) static int picolcd_get_contrast(struct lcd_device *ldev)
{
 struct picolcd_data *data = lcd_get_data(ldev);
 return data->lcd_contrast;
}
