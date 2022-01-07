
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_au1550_data {int dummy; } ;


 int EIO ;
 int PSC_SMBEVNT ;
 unsigned int PSC_SMBEVNT_ALLCLR ;
 int PSC_SMBPCR ;
 unsigned int PSC_SMBPCR_DC ;
 unsigned int PSC_SMBPCR_MS ;
 int PSC_SMBSTAT ;
 unsigned long PSC_SMBSTAT_RE ;
 unsigned long PSC_SMBSTAT_TE ;
 int PSC_SMBTXRX ;
 unsigned int PSC_SMBTXRX_STP ;
 unsigned int RD (struct i2c_au1550_data*,int ) ;
 int WR (struct i2c_au1550_data*,int ,unsigned int) ;
 int cpu_relax () ;
 int udelay (int) ;
 scalar_t__ wait_ack (struct i2c_au1550_data*) ;
 int wait_master_done (struct i2c_au1550_data*) ;

__attribute__((used)) static int
do_address(struct i2c_au1550_data *adap, unsigned int addr, int rd, int q)
{
 unsigned long stat;


 stat = RD(adap, PSC_SMBSTAT);
 WR(adap, PSC_SMBEVNT, PSC_SMBEVNT_ALLCLR);

 if (!(stat & PSC_SMBSTAT_TE) || !(stat & PSC_SMBSTAT_RE)) {
  WR(adap, PSC_SMBPCR, PSC_SMBPCR_DC);
  while ((RD(adap, PSC_SMBPCR) & PSC_SMBPCR_DC) != 0)
   cpu_relax();
  udelay(50);
 }


 addr <<= 1;
 if (rd)
  addr |= 1;


 if (q)
  addr |= PSC_SMBTXRX_STP;


 WR(adap, PSC_SMBTXRX, addr);
 WR(adap, PSC_SMBPCR, PSC_SMBPCR_MS);
 if (wait_ack(adap))
  return -EIO;
 return (q) ? wait_master_done(adap) : 0;
}
