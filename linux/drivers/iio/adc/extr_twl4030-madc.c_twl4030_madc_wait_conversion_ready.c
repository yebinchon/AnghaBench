
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl4030_madc_data {int dev; } ;


 int EAGAIN ;
 int TWL4030_MADC_BUSY ;
 int TWL4030_MADC_EOC_SW ;
 int TWL4030_MODULE_MADC ;
 int dev_err (int ,char*,...) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (unsigned int) ;
 int time_after (unsigned long,unsigned long) ;
 int twl_i2c_read_u8 (int ,int*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int twl4030_madc_wait_conversion_ready(struct twl4030_madc_data *madc,
           unsigned int timeout_ms,
           u8 status_reg)
{
 unsigned long timeout;
 int ret;

 timeout = jiffies + msecs_to_jiffies(timeout_ms);
 do {
  u8 reg;

  ret = twl_i2c_read_u8(TWL4030_MODULE_MADC, &reg, status_reg);
  if (ret) {
   dev_err(madc->dev,
    "unable to read status register 0x%X\n",
    status_reg);
   return ret;
  }
  if (!(reg & TWL4030_MADC_BUSY) && (reg & TWL4030_MADC_EOC_SW))
   return 0;
  usleep_range(500, 2000);
 } while (!time_after(jiffies, timeout));
 dev_err(madc->dev, "conversion timeout!\n");

 return -EAGAIN;
}
