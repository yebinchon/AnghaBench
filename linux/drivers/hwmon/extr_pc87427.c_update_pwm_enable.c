
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pc87427_data {int* address; int * pwm_enable; } ;


 size_t LD_FAN ;
 scalar_t__ PC87427_REG_PWM_ENABLE ;
 int PWM_ENABLE_MODE_MASK ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void update_pwm_enable(struct pc87427_data *data, int nr, u8 mode)
{
 int iobase = data->address[LD_FAN];
 data->pwm_enable[nr] &= ~PWM_ENABLE_MODE_MASK;
 data->pwm_enable[nr] |= mode;
 outb(data->pwm_enable[nr], iobase + PC87427_REG_PWM_ENABLE);
}
