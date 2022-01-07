
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct picolcd_data {int lcd_contrast; int lcd; } ;


 int picolcd_set_contrast (int ,int ) ;

int picolcd_resume_lcd(struct picolcd_data *data)
{
 if (!data->lcd)
  return 0;
 return picolcd_set_contrast(data->lcd, data->lcd_contrast);
}
