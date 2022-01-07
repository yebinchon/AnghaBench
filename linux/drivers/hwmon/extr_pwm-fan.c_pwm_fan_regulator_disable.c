
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int regulator_disable (void*) ;

__attribute__((used)) static void pwm_fan_regulator_disable(void *data)
{
 regulator_disable(data);
}
