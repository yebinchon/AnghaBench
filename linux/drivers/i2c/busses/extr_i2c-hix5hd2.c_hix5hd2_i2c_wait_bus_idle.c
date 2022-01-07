
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hix5hd2_i2c_priv {int dummy; } ;


 int EBUSY ;
 int I2C_BUSY ;
 int hix5hd2_i2c_clr_pend_irq (struct hix5hd2_i2c_priv*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int hix5hd2_i2c_wait_bus_idle(struct hix5hd2_i2c_priv *priv)
{
 unsigned long stop_time;
 u32 int_status;


 stop_time = jiffies + msecs_to_jiffies(100);
 do {
  int_status = hix5hd2_i2c_clr_pend_irq(priv);
  if (!(int_status & I2C_BUSY))
   return 0;

  usleep_range(50, 200);
 } while (time_before(jiffies, stop_time));

 return -EBUSY;
}
