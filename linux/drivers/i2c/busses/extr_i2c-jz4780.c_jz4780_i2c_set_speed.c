
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct jz4780_i2c {int speed; TYPE_1__ adap; int clk; } ;


 int JZ4780_I2CFHCNT_ADJUST (int) ;
 int JZ4780_I2CFLCNT_ADJUST (int) ;
 int JZ4780_I2CSHCNT_ADJUST (int) ;
 int JZ4780_I2CSLCNT_ADJUST (int) ;
 int JZ4780_I2C_CTRL ;
 unsigned short JZ4780_I2C_CTRL_MD ;
 unsigned short JZ4780_I2C_CTRL_REST ;
 unsigned short JZ4780_I2C_CTRL_SLVDIS ;
 unsigned short JZ4780_I2C_CTRL_SPDF ;
 unsigned short JZ4780_I2C_CTRL_SPDS ;
 int JZ4780_I2C_FHCNT ;
 int JZ4780_I2C_FLCNT ;
 int JZ4780_I2C_SDAHD ;
 int JZ4780_I2C_SDAHD_HDENB ;
 int JZ4780_I2C_SDASU ;
 int JZ4780_I2C_SHCNT ;
 int JZ4780_I2C_SLCNT ;
 int clk_get_rate (int ) ;
 int dev_dbg (int *,char*) ;
 scalar_t__ jz4780_i2c_disable (struct jz4780_i2c*) ;
 int jz4780_i2c_writew (struct jz4780_i2c*,int ,int) ;

__attribute__((used)) static int jz4780_i2c_set_speed(struct jz4780_i2c *i2c)
{
 int dev_clk_khz = clk_get_rate(i2c->clk) / 1000;
 int cnt_high = 0;
 int cnt_low = 0;
 int cnt_period = 0;
 int setup_time = 0;
 int hold_time = 0;
 unsigned short tmp = 0;
 int i2c_clk = i2c->speed;

 if (jz4780_i2c_disable(i2c))
  dev_dbg(&i2c->adap.dev, "i2c not disabled\n");






 cnt_period = dev_clk_khz / i2c_clk;

 if (i2c_clk <= 100)
  cnt_high = (cnt_period * 4000) / (4700 + 4000);
 else
  cnt_high = (cnt_period * 600) / (1300 + 600);

 cnt_low = cnt_period - cnt_high;
 if (i2c_clk <= 100) {
  tmp = JZ4780_I2C_CTRL_SPDS | JZ4780_I2C_CTRL_REST
        | JZ4780_I2C_CTRL_SLVDIS | JZ4780_I2C_CTRL_MD;
  jz4780_i2c_writew(i2c, JZ4780_I2C_CTRL, tmp);

  jz4780_i2c_writew(i2c, JZ4780_I2C_SHCNT,
      JZ4780_I2CSHCNT_ADJUST(cnt_high));
  jz4780_i2c_writew(i2c, JZ4780_I2C_SLCNT,
      JZ4780_I2CSLCNT_ADJUST(cnt_low));
 } else {
  tmp = JZ4780_I2C_CTRL_SPDF | JZ4780_I2C_CTRL_REST
        | JZ4780_I2C_CTRL_SLVDIS | JZ4780_I2C_CTRL_MD;
  jz4780_i2c_writew(i2c, JZ4780_I2C_CTRL, tmp);

  jz4780_i2c_writew(i2c, JZ4780_I2C_FHCNT,
      JZ4780_I2CFHCNT_ADJUST(cnt_high));
  jz4780_i2c_writew(i2c, JZ4780_I2C_FLCNT,
      JZ4780_I2CFLCNT_ADJUST(cnt_low));
 }
 if (i2c_clk <= 100) {
  setup_time = 300;
  hold_time = 400;
 } else {
  setup_time = 450;
  hold_time = 450;
 }

 hold_time = ((hold_time * dev_clk_khz) / 1000000) - 1;
 setup_time = ((setup_time * dev_clk_khz) / 1000000) + 1;

 if (setup_time > 255)
  setup_time = 255;

 if (setup_time <= 0)
  setup_time = 1;

 jz4780_i2c_writew(i2c, JZ4780_I2C_SDASU, setup_time);

 if (hold_time > 255)
  hold_time = 255;

 if (hold_time >= 0) {

  hold_time |= JZ4780_I2C_SDAHD_HDENB;
  jz4780_i2c_writew(i2c, JZ4780_I2C_SDAHD, hold_time);
 } else {

  jz4780_i2c_writew(i2c, JZ4780_I2C_SDAHD, 0);
 }

 return 0;
}
