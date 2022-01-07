
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * idev; } ;


 TYPE_1__ ams_info ;
 int input_free_polled_device (int *) ;
 int input_unregister_polled_device (int *) ;
 int joystick ;

__attribute__((used)) static void ams_input_disable(void)
{
 if (ams_info.idev) {
  input_unregister_polled_device(ams_info.idev);
  input_free_polled_device(ams_info.idev);
  ams_info.idev = ((void*)0);
 }

 joystick = 0;
}
