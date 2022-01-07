
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I2C_DIR ;
 int I2C_SCL ;
 int inb (int ) ;
 int outb (int,int ) ;

__attribute__((used)) static void bit_via_setscl(void *data, int state)
{
 outb(state ? inb(I2C_DIR) & ~I2C_SCL : inb(I2C_DIR) | I2C_SCL, I2C_DIR);
}
