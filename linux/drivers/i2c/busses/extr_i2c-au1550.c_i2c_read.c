
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_au1550_data {int dummy; } ;


 int EIO ;
 int PSC_SMBTXRX ;
 int PSC_SMBTXRX_STP ;
 int RD (struct i2c_au1550_data*,int ) ;
 int WR (struct i2c_au1550_data*,int ,int ) ;
 scalar_t__ wait_for_rx_byte (struct i2c_au1550_data*,unsigned char*) ;
 scalar_t__ wait_master_done (struct i2c_au1550_data*) ;

__attribute__((used)) static int i2c_read(struct i2c_au1550_data *adap, unsigned char *buf,
      unsigned int len)
{
 int i;

 if (len == 0)
  return 0;





 i = 0;
 while (i < (len - 1)) {
  WR(adap, PSC_SMBTXRX, 0);
  if (wait_for_rx_byte(adap, &buf[i]))
   return -EIO;

  i++;
 }


 WR(adap, PSC_SMBTXRX, PSC_SMBTXRX_STP);
 if (wait_master_done(adap))
  return -EIO;

 buf[i] = (unsigned char)(RD(adap, PSC_SMBTXRX) & 0xff);
 return 0;
}
