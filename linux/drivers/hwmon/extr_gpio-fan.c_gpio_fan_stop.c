
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int set_fan_speed (void*,int ) ;

__attribute__((used)) static void gpio_fan_stop(void *data)
{
 set_fan_speed(data, 0);
}
