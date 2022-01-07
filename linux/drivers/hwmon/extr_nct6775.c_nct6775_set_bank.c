
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct nct6775_data {scalar_t__ bank; scalar_t__ addr; } ;


 scalar_t__ ADDR_REG_OFFSET ;
 scalar_t__ DATA_REG_OFFSET ;
 scalar_t__ NCT6775_REG_BANK ;
 int outb_p (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void nct6775_set_bank(struct nct6775_data *data, u16 reg)
{
 u8 bank = reg >> 8;

 if (data->bank != bank) {
  outb_p(NCT6775_REG_BANK, data->addr + ADDR_REG_OFFSET);
  outb_p(bank, data->addr + DATA_REG_OFFSET);
  data->bank = bank;
 }
}
