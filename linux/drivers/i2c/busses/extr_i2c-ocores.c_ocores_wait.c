
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ocores_i2c {int dummy; } ;


 int ETIMEDOUT ;
 unsigned long const jiffies ;
 int oc_getreg (struct ocores_i2c*,int) ;
 scalar_t__ time_after (unsigned long const,unsigned long) ;

__attribute__((used)) static int ocores_wait(struct ocores_i2c *i2c,
         int reg, u8 mask, u8 val,
         const unsigned long timeout)
{
 unsigned long j;

 j = jiffies + timeout;
 while (1) {
  u8 status = oc_getreg(i2c, reg);

  if ((status & mask) == val)
   break;

  if (time_after(jiffies, j))
   return -ETIMEDOUT;
 }
 return 0;
}
