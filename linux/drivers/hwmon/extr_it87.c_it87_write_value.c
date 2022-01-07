
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct it87_data {scalar_t__ addr; } ;


 scalar_t__ IT87_ADDR_REG_OFFSET ;
 scalar_t__ IT87_DATA_REG_OFFSET ;
 int outb_p (int ,scalar_t__) ;

__attribute__((used)) static void it87_write_value(struct it87_data *data, u8 reg, u8 value)
{
 outb_p(reg, data->addr + IT87_ADDR_REG_OFFSET);
 outb_p(value, data->addr + IT87_DATA_REG_OFFSET);
}
