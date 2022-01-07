
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_au1550_data {int xfer_timeout; } ;


 int ETIMEDOUT ;
 int PSC_SMBEVNT ;
 int PSC_SMBEVNT_MD ;
 int RD (struct i2c_au1550_data*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int wait_master_done(struct i2c_au1550_data *adap)
{
 int i;


 for (i = 0; i < 2 * adap->xfer_timeout; i++) {
  if ((RD(adap, PSC_SMBEVNT) & PSC_SMBEVNT_MD) != 0)
   return 0;
  udelay(1);
 }

 return -ETIMEDOUT;
}
