
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_handle {int dummy; } ;



 int system_power_event (unsigned int) ;

__attribute__((used)) static void apmpower_event(struct input_handle *handle, unsigned int type,
      unsigned int code, int value)
{

 if (value != 1)
  return;

 switch (type) {
 case 128:
  system_power_event(code);
  break;

 default:
  break;
 }
}
