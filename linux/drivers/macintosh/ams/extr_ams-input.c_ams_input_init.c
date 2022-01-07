
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* of_dev; } ;
struct TYPE_3__ {int dev; } ;


 TYPE_2__ ams_info ;
 int ams_input_enable () ;
 int dev_attr_joystick ;
 int device_create_file (int *,int *) ;
 scalar_t__ joystick ;

int ams_input_init(void)
{
 if (joystick)
  ams_input_enable();

 return device_create_file(&ams_info.of_dev->dev, &dev_attr_joystick);
}
