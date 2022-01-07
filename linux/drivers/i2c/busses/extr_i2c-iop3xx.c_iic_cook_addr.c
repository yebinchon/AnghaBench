
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int dummy; } ;


 unsigned char i2c_8bit_addr_from_msg (struct i2c_msg*) ;

__attribute__((used)) static inline unsigned char
iic_cook_addr(struct i2c_msg *msg)
{
 unsigned char addr;

 addr = i2c_8bit_addr_from_msg(msg);

 return addr;
}
