
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_au1550_data {int dummy; } ;


 int ETIMEDOUT ;
 int PSC_SMBEVNT ;
 unsigned long PSC_SMBEVNT_AL ;
 unsigned long PSC_SMBEVNT_AN ;
 unsigned long PSC_SMBEVNT_DN ;
 unsigned long RD (struct i2c_au1550_data*,int ) ;
 scalar_t__ wait_xfer_done (struct i2c_au1550_data*) ;

__attribute__((used)) static int wait_ack(struct i2c_au1550_data *adap)
{
 unsigned long stat;

 if (wait_xfer_done(adap))
  return -ETIMEDOUT;

 stat = RD(adap, PSC_SMBEVNT);
 if ((stat & (PSC_SMBEVNT_DN | PSC_SMBEVNT_AN | PSC_SMBEVNT_AL)) != 0)
  return -ETIMEDOUT;

 return 0;
}
