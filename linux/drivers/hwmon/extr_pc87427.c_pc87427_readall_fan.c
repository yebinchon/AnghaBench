
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct pc87427_data {int* address; int * fan_status; void** fan_min; void** fan; } ;


 int BANK_FM (size_t) ;
 size_t LD_FAN ;
 scalar_t__ PC87427_REG_BANK ;
 scalar_t__ PC87427_REG_FAN ;
 scalar_t__ PC87427_REG_FAN_MIN ;
 scalar_t__ PC87427_REG_FAN_STATUS ;
 int inb (scalar_t__) ;
 void* inw (scalar_t__) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void pc87427_readall_fan(struct pc87427_data *data, u8 nr)
{
 int iobase = data->address[LD_FAN];

 outb(BANK_FM(nr), iobase + PC87427_REG_BANK);
 data->fan[nr] = inw(iobase + PC87427_REG_FAN);
 data->fan_min[nr] = inw(iobase + PC87427_REG_FAN_MIN);
 data->fan_status[nr] = inb(iobase + PC87427_REG_FAN_STATUS);

 outb(data->fan_status[nr], iobase + PC87427_REG_FAN_STATUS);
}
