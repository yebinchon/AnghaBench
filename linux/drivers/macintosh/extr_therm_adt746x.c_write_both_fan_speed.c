
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermostat {scalar_t__ type; } ;


 scalar_t__ ADT7460 ;
 int write_fan_speed (struct thermostat*,int,int) ;

__attribute__((used)) static void write_both_fan_speed(struct thermostat *th, int speed)
{
 write_fan_speed(th, speed, 0);
 if (th->type == ADT7460)
  write_fan_speed(th, speed, 1);
}
