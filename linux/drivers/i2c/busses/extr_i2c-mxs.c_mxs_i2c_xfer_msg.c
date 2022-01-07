
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_i2c_dev {int cmd_err; scalar_t__ dev_type; int dev; scalar_t__ regs; int cmd_complete; } ;
struct i2c_msg {int len; int flags; int addr; } ;
struct i2c_adapter {int dummy; } ;


 int ENXIO ;
 int ETIMEDOUT ;
 int I2C_M_RD ;
 int MXS_I2C_CTRL0_POST_SEND_STOP ;
 int MXS_I2C_CTRL1_CLR_GOT_A_NAK ;
 scalar_t__ MXS_I2C_CTRL1_SET ;
 scalar_t__ MXS_I2C_V1 ;
 int dev_dbg (int ,char*,...) ;
 struct mxs_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;
 int msecs_to_jiffies (int) ;
 int mxs_i2c_dma_finish (struct mxs_i2c_dev*) ;
 int mxs_i2c_dma_setup_xfer (struct i2c_adapter*,struct i2c_msg*,int) ;
 int mxs_i2c_pio_setup_xfer (struct i2c_adapter*,struct i2c_msg*,int) ;
 int mxs_i2c_reset (struct mxs_i2c_dev*) ;
 int reinit_completion (int *) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int mxs_i2c_xfer_msg(struct i2c_adapter *adap, struct i2c_msg *msg,
    int stop)
{
 struct mxs_i2c_dev *i2c = i2c_get_adapdata(adap);
 int ret;
 int flags;
 int use_pio = 0;
 unsigned long time_left;

 flags = stop ? MXS_I2C_CTRL0_POST_SEND_STOP : 0;

 dev_dbg(i2c->dev, "addr: 0x%04x, len: %d, flags: 0x%x, stop: %d\n",
  msg->addr, msg->len, msg->flags, stop);






 if ((msg->flags & I2C_M_RD) && (msg->len <= 4))
  use_pio = 1;
 if (!(msg->flags & I2C_M_RD) && (msg->len < 7))
  use_pio = 1;

 i2c->cmd_err = 0;
 if (use_pio) {
  ret = mxs_i2c_pio_setup_xfer(adap, msg, flags);

  if (ret && (ret != -ENXIO))
   mxs_i2c_reset(i2c);
 } else {
  reinit_completion(&i2c->cmd_complete);
  ret = mxs_i2c_dma_setup_xfer(adap, msg, flags);
  if (ret)
   return ret;

  time_left = wait_for_completion_timeout(&i2c->cmd_complete,
      msecs_to_jiffies(1000));
  if (!time_left)
   goto timeout;

  ret = i2c->cmd_err;
 }

 if (ret == -ENXIO) {




  writel(MXS_I2C_CTRL1_CLR_GOT_A_NAK,
         i2c->regs + MXS_I2C_CTRL1_SET);
 }
 if (i2c->dev_type == MXS_I2C_V1)
  mxs_i2c_reset(i2c);

 dev_dbg(i2c->dev, "Done with err=%d\n", ret);

 return ret;

timeout:
 dev_dbg(i2c->dev, "Timeout!\n");
 mxs_i2c_dma_finish(i2c);
 ret = mxs_i2c_reset(i2c);
 if (ret)
  return ret;

 return -ETIMEDOUT;
}
