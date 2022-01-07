
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct rtl2832_dev {TYPE_1__* pdata; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;
struct dvb_frontend {struct rtl2832_dev* demodulator_priv; } ;
struct TYPE_2__ {int clk; } ;


 int DVBT_EN_BBIN ;
 int DVBT_PSET_IFFREQ ;
 int dev_dbg (int *,char*,int,...) ;
 int div_u64 (int,int) ;
 int rtl2832_wr_demod_reg (struct rtl2832_dev*,int ,int) ;

__attribute__((used)) static int rtl2832_set_if(struct dvb_frontend *fe, u32 if_freq)
{
 struct rtl2832_dev *dev = fe->demodulator_priv;
 struct i2c_client *client = dev->client;
 int ret;
 u64 pset_iffreq;
 u8 en_bbin = (if_freq == 0 ? 0x1 : 0x0);





 pset_iffreq = if_freq % dev->pdata->clk;
 pset_iffreq *= 0x400000;
 pset_iffreq = div_u64(pset_iffreq, dev->pdata->clk);
 pset_iffreq = -pset_iffreq;
 pset_iffreq = pset_iffreq & 0x3fffff;
 dev_dbg(&client->dev, "if_frequency=%d pset_iffreq=%08x\n",
  if_freq, (unsigned)pset_iffreq);

 ret = rtl2832_wr_demod_reg(dev, DVBT_EN_BBIN, en_bbin);
 if (ret)
  goto err;

 ret = rtl2832_wr_demod_reg(dev, DVBT_PSET_IFFREQ, pset_iffreq);
 if (ret)
  goto err;

 return 0;
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
