
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct pc87427_data {int* address; void** pwm; void** pwm_enable; } ;


 int BANK_FC (size_t) ;
 size_t LD_FAN ;
 scalar_t__ PC87427_REG_BANK ;
 scalar_t__ PC87427_REG_PWM_DUTY ;
 scalar_t__ PC87427_REG_PWM_ENABLE ;
 void* inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void pc87427_readall_pwm(struct pc87427_data *data, u8 nr)
{
 int iobase = data->address[LD_FAN];

 outb(BANK_FC(nr), iobase + PC87427_REG_BANK);
 data->pwm_enable[nr] = inb(iobase + PC87427_REG_PWM_ENABLE);
 data->pwm[nr] = inb(iobase + PC87427_REG_PWM_DUTY);
}
