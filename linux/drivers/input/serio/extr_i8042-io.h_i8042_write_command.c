
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I8042_COMMAND_REG ;
 int outb (int,int ) ;

__attribute__((used)) static inline void i8042_write_command(int val)
{
 outb(val, I8042_COMMAND_REG);
}
