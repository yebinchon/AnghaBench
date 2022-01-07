
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_au1550_data {int dummy; } ;


 int EIO ;
 int PSC_SMBTXRX ;
 unsigned long PSC_SMBTXRX_STP ;
 int WR (struct i2c_au1550_data*,int ,unsigned long) ;
 scalar_t__ wait_ack (struct i2c_au1550_data*) ;
 scalar_t__ wait_master_done (struct i2c_au1550_data*) ;

__attribute__((used)) static int i2c_write(struct i2c_au1550_data *adap, unsigned char *buf,
       unsigned int len)
{
 int i;
 unsigned long data;

 if (len == 0)
  return 0;

 i = 0;
 while (i < (len-1)) {
  data = buf[i];
  WR(adap, PSC_SMBTXRX, data);
  if (wait_ack(adap))
   return -EIO;
  i++;
 }


 data = buf[i];
 data |= PSC_SMBTXRX_STP;
 WR(adap, PSC_SMBTXRX, data);
 if (wait_master_done(adap))
  return -EIO;
 return 0;
}
