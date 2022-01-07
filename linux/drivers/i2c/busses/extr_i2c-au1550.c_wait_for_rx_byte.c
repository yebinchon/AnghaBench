
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_au1550_data {int xfer_timeout; } ;


 int EIO ;
 int PSC_SMBSTAT ;
 unsigned char PSC_SMBSTAT_RE ;
 int PSC_SMBTXRX ;
 unsigned char RD (struct i2c_au1550_data*,int ) ;
 int udelay (int) ;
 scalar_t__ wait_xfer_done (struct i2c_au1550_data*) ;

__attribute__((used)) static int wait_for_rx_byte(struct i2c_au1550_data *adap, unsigned char *out)
{
 int j;

 if (wait_xfer_done(adap))
  return -EIO;

 j = adap->xfer_timeout * 100;
 do {
  j--;
  if (j <= 0)
   return -EIO;

  if ((RD(adap, PSC_SMBSTAT) & PSC_SMBSTAT_RE) == 0)
   j = 0;
  else
   udelay(1);
 } while (j > 0);

 *out = RD(adap, PSC_SMBTXRX);

 return 0;
}
