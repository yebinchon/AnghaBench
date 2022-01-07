
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I2C_RXFLR ;
 int I2C_STATUS ;
 unsigned long I2C_STATUS_TFNF ;
 int I2C_TAR ;
 int I2C_TAR_EEPROM ;
 int msleep (int) ;
 int readl (int ) ;
 int udelay (int) ;

__attribute__((used)) static short poll_status(unsigned long bit)
{
 int loop_cntr = 1000;

 if (bit & I2C_STATUS_TFNF) {
  do {
   udelay(10);
  } while (!(readl(I2C_STATUS) & bit) && (--loop_cntr > 0));
 } else {

  do {
   if (readl(I2C_TAR) == I2C_TAR_EEPROM)
    msleep(20);
   else
    udelay(10);
  } while (!(readl(I2C_RXFLR) & 0xf) && (--loop_cntr > 0));
 }

 return (loop_cntr > 0);
}
