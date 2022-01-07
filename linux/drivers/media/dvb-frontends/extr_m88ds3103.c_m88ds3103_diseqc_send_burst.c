
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m88ds3103_dev {int regmap; TYPE_1__* cfg; int warm; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;
struct dvb_frontend {struct m88ds3103_dev* demodulator_priv; } ;
typedef enum fe_sec_mini_cmd { ____Placeholder_fe_sec_mini_cmd } fe_sec_mini_cmd ;
struct TYPE_2__ {int envelope_mode; } ;


 int EAGAIN ;
 int EINVAL ;
 int ETIMEDOUT ;


 int SEND_BURST_TIMEOUT ;
 int dev_dbg (int *,char*,...) ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 int m88ds3103_update_bits (struct m88ds3103_dev*,int,int,int) ;
 unsigned long msecs_to_jiffies (int) ;
 int regmap_read (int ,int,unsigned int*) ;
 int regmap_write (int ,int,unsigned int) ;
 int time_after (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int m88ds3103_diseqc_send_burst(struct dvb_frontend *fe,
 enum fe_sec_mini_cmd fe_sec_mini_cmd)
{
 struct m88ds3103_dev *dev = fe->demodulator_priv;
 struct i2c_client *client = dev->client;
 int ret;
 unsigned int utmp, burst;
 unsigned long timeout;

 dev_dbg(&client->dev, "fe_sec_mini_cmd=%d\n", fe_sec_mini_cmd);

 if (!dev->warm) {
  ret = -EAGAIN;
  goto err;
 }

 utmp = dev->cfg->envelope_mode << 5;
 ret = m88ds3103_update_bits(dev, 0xa2, 0xe0, utmp);
 if (ret)
  goto err;

 switch (fe_sec_mini_cmd) {
 case 129:
  burst = 0x02;
  break;
 case 128:
  burst = 0x01;
  break;
 default:
  dev_dbg(&client->dev, "invalid fe_sec_mini_cmd\n");
  ret = -EINVAL;
  goto err;
 }

 ret = regmap_write(dev->regmap, 0xa1, burst);
 if (ret)
  goto err;



 timeout = jiffies + msecs_to_jiffies(40);


 usleep_range(8500, 12500);

 for (utmp = 1; !time_after(jiffies, timeout) && utmp;) {
  ret = regmap_read(dev->regmap, 0xa1, &utmp);
  if (ret)
   goto err;
  utmp = (utmp >> 6) & 0x1;
 }

 if (utmp == 0) {
  dev_dbg(&client->dev, "diseqc tx took %u ms\n",
   jiffies_to_msecs(jiffies) -
   (jiffies_to_msecs(timeout) - 40));
 } else {
  dev_dbg(&client->dev, "diseqc tx timeout\n");

  ret = m88ds3103_update_bits(dev, 0xa1, 0xc0, 0x40);
  if (ret)
   goto err;
 }

 ret = m88ds3103_update_bits(dev, 0xa2, 0xc0, 0x80);
 if (ret)
  goto err;

 if (utmp == 1) {
  ret = -ETIMEDOUT;
  goto err;
 }

 return 0;
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
