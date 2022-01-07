
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 size_t SR_FROM_REG (int ) ;
 int * tach_period ;

__attribute__((used)) static u8 get_tach_period(u8 fan_dynamics)
{
 return tach_period[SR_FROM_REG(fan_dynamics)];
}
