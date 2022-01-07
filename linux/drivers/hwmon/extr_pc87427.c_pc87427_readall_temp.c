
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct pc87427_data {int* address; void** temp_status; void** temp_type; void** temp_crit; void** temp_min; void** temp_max; int * temp; } ;


 void* BANK_TM (size_t) ;
 size_t LD_TEMP ;
 scalar_t__ PC87427_REG_BANK ;
 scalar_t__ PC87427_REG_TEMP ;
 scalar_t__ PC87427_REG_TEMP_CRIT ;
 scalar_t__ PC87427_REG_TEMP_MAX ;
 scalar_t__ PC87427_REG_TEMP_MIN ;
 scalar_t__ PC87427_REG_TEMP_STATUS ;
 scalar_t__ PC87427_REG_TEMP_TYPE ;
 void* inb (scalar_t__) ;
 int inw (scalar_t__) ;
 int le16_to_cpu (int ) ;
 int outb (void*,scalar_t__) ;

__attribute__((used)) static void pc87427_readall_temp(struct pc87427_data *data, u8 nr)
{
 int iobase = data->address[LD_TEMP];

 outb(BANK_TM(nr), iobase + PC87427_REG_BANK);
 data->temp[nr] = le16_to_cpu(inw(iobase + PC87427_REG_TEMP));
 data->temp_max[nr] = inb(iobase + PC87427_REG_TEMP_MAX);
 data->temp_min[nr] = inb(iobase + PC87427_REG_TEMP_MIN);
 data->temp_crit[nr] = inb(iobase + PC87427_REG_TEMP_CRIT);
 data->temp_type[nr] = inb(iobase + PC87427_REG_TEMP_TYPE);
 data->temp_status[nr] = inb(iobase + PC87427_REG_TEMP_STATUS);

 outb(data->temp_status[nr], iobase + PC87427_REG_TEMP_STATUS);
}
