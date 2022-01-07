
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct w83627hf_data {int lock; scalar_t__ addr; } ;


 scalar_t__ W83781D_ADDR_REG_OFFSET ;
 scalar_t__ W83781D_DATA_REG_OFFSET ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb_p (int,scalar_t__) ;
 int w83627hf_reset_bank (struct w83627hf_data*,int) ;
 int w83627hf_set_bank (struct w83627hf_data*,int) ;

__attribute__((used)) static int w83627hf_write_value(struct w83627hf_data *data, u16 reg, u16 value)
{
 int word_sized;

 mutex_lock(&data->lock);
 word_sized = (((reg & 0xff00) == 0x100)
     || ((reg & 0xff00) == 0x200))
    && (((reg & 0x00ff) == 0x53)
     || ((reg & 0x00ff) == 0x55));
 w83627hf_set_bank(data, reg);
 outb_p(reg & 0xff, data->addr + W83781D_ADDR_REG_OFFSET);
 if (word_sized) {
  outb_p(value >> 8,
         data->addr + W83781D_DATA_REG_OFFSET);
  outb_p((reg & 0xff) + 1,
         data->addr + W83781D_ADDR_REG_OFFSET);
 }
 outb_p(value & 0xff,
        data->addr + W83781D_DATA_REG_OFFSET);
 w83627hf_reset_bank(data, reg);
 mutex_unlock(&data->lock);
 return 0;
}
