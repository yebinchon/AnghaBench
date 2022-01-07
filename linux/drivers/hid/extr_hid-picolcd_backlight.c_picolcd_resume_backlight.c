
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct picolcd_data {int backlight; } ;


 int picolcd_set_brightness (int ) ;

int picolcd_resume_backlight(struct picolcd_data *data)
{
 if (!data->backlight)
  return 0;
 return picolcd_set_brightness(data->backlight);
}
