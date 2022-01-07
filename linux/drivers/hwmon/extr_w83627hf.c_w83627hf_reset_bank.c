
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct w83627hf_data {scalar_t__ addr; } ;


 scalar_t__ W83781D_ADDR_REG_OFFSET ;
 scalar_t__ W83781D_DATA_REG_OFFSET ;
 int W83781D_REG_BANK ;
 int outb_p (int ,scalar_t__) ;

__attribute__((used)) static inline void w83627hf_reset_bank(struct w83627hf_data *data, u16 reg)
{
 if (reg & 0xff00) {
  outb_p(W83781D_REG_BANK, data->addr + W83781D_ADDR_REG_OFFSET);
  outb_p(0, data->addr + W83781D_DATA_REG_OFFSET);
 }
}
