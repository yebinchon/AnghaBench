
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct f71805f_data {scalar_t__ addr; } ;


 scalar_t__ ADDR_REG_OFFSET ;
 scalar_t__ DATA_REG_OFFSET ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static u8 f71805f_read8(struct f71805f_data *data, u8 reg)
{
 outb(reg, data->addr + ADDR_REG_OFFSET);
 return inb(data->addr + DATA_REG_OFFSET);
}
