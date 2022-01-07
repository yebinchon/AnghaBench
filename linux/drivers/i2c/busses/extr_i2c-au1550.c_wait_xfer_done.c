
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_au1550_data {int xfer_timeout; } ;


 int ETIMEDOUT ;
 int PSC_SMBSTAT ;
 int PSC_SMBSTAT_TE ;
 int RD (struct i2c_au1550_data*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int wait_xfer_done(struct i2c_au1550_data *adap)
{
 int i;


 for (i = 0; i < adap->xfer_timeout; i++) {
  if (RD(adap, PSC_SMBSTAT) & PSC_SMBSTAT_TE)
   return 0;

  udelay(1);
 }

 return -ETIMEDOUT;
}
