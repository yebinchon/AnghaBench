
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I8042_CTL_TIMEOUT ;
 int I8042_STR_IBF ;
 int i8042_read_status () ;
 int udelay (int) ;

__attribute__((used)) static int i8042_wait_write(void)
{
 int i = 0;

 while ((i8042_read_status() & I8042_STR_IBF) && (i < I8042_CTL_TIMEOUT)) {
  udelay(50);
  i++;
 }
 return -(i == I8042_CTL_TIMEOUT);
}
