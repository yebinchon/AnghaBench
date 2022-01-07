
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rk3x_i2c {int addr; int busy; scalar_t__ error; scalar_t__ processed; int state; struct i2c_msg* msg; void* mode; int dev; } ;
struct i2c_msg {int addr; int len; int flags; int* buf; } ;


 int I2C_M_RD ;
 void* REG_CON_MOD_REGISTER_TX ;
 void* REG_CON_MOD_TX ;
 int REG_MRXADDR ;
 int REG_MRXADDR_VALID (int) ;
 int REG_MRXRADDR ;
 int STATE_START ;
 int dev_dbg (int ,char*,int) ;
 int i2c_writel (struct rk3x_i2c*,int,int ) ;
 int rk3x_i2c_clean_ipd (struct rk3x_i2c*) ;

__attribute__((used)) static int rk3x_i2c_setup(struct rk3x_i2c *i2c, struct i2c_msg *msgs, int num)
{
 u32 addr = (msgs[0].addr & 0x7f) << 1;
 int ret = 0;
 if (num >= 2 && msgs[0].len < 4 &&
     !(msgs[0].flags & I2C_M_RD) && (msgs[1].flags & I2C_M_RD)) {
  u32 reg_addr = 0;
  int i;

  dev_dbg(i2c->dev, "Combined write/read from addr 0x%x\n",
   addr >> 1);


  for (i = 0; i < msgs[0].len; ++i) {
   reg_addr |= msgs[0].buf[i] << (i * 8);
   reg_addr |= REG_MRXADDR_VALID(i);
  }


  i2c->msg = &msgs[1];

  i2c->mode = REG_CON_MOD_REGISTER_TX;

  i2c_writel(i2c, addr | REG_MRXADDR_VALID(0), REG_MRXADDR);
  i2c_writel(i2c, reg_addr, REG_MRXRADDR);

  ret = 2;
 } else {





  if (msgs[0].flags & I2C_M_RD) {
   addr |= 1;





   i2c->mode = REG_CON_MOD_REGISTER_TX;
   i2c_writel(i2c, addr | REG_MRXADDR_VALID(0),
       REG_MRXADDR);
   i2c_writel(i2c, 0, REG_MRXRADDR);
  } else {
   i2c->mode = REG_CON_MOD_TX;
  }

  i2c->msg = &msgs[0];

  ret = 1;
 }

 i2c->addr = msgs[0].addr;
 i2c->busy = 1;
 i2c->state = STATE_START;
 i2c->processed = 0;
 i2c->error = 0;

 rk3x_i2c_clean_ipd(i2c);

 return ret;
}
