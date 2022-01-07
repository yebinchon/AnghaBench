
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct pc87427_data {size_t* address; } ;


 size_t PC87427_REG_BANK ;
 int outb (size_t,size_t) ;

__attribute__((used)) static inline void pc87427_write8_bank(struct pc87427_data *data, u8 ldi,
           u8 bank, u8 reg, u8 value)
{
 outb(bank, data->address[ldi] + PC87427_REG_BANK);
 outb(value, data->address[ldi] + reg);
}
