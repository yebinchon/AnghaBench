
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mxs_i2c_dev {scalar_t__ dev_type; scalar_t__ regs; int dev; } ;
struct i2c_msg {int flags; int len; int* buf; } ;
struct i2c_adapter {int dummy; } ;


 int BUG_ON (int) ;
 int ENXIO ;
 int I2C_M_RD ;
 int MXS_CMD_I2C_READ ;
 int MXS_CMD_I2C_SELECT ;
 scalar_t__ MXS_I2C_CTRL0_CLR ;
 int MXS_I2C_CTRL0_DIRECTION ;
 int MXS_I2C_CTRL0_MASTER_MODE ;
 int MXS_I2C_CTRL0_PIO_MODE ;
 int MXS_I2C_CTRL0_POST_SEND_STOP ;
 int MXS_I2C_CTRL0_PRE_SEND_START ;
 int MXS_I2C_CTRL0_RETAIN_CLOCK ;
 int MXS_I2C_CTRL0_XFER_COUNT (int) ;
 scalar_t__ MXS_I2C_CTRL1_CLR ;
 scalar_t__ MXS_I2C_CTRL1_SET ;
 scalar_t__ MXS_I2C_DATA (struct mxs_i2c_dev*) ;
 scalar_t__ MXS_I2C_DEBUG0_CLR (struct mxs_i2c_dev*) ;
 int MXS_I2C_DEBUG0_DMAREQ ;
 int MXS_I2C_IRQ_MASK ;
 scalar_t__ MXS_I2C_STAT ;
 int MXS_I2C_STAT_GOT_A_NAK ;
 scalar_t__ MXS_I2C_V1 ;
 int dev_dbg (int ,char*,...) ;
 int i2c_8bit_addr_from_msg (struct i2c_msg*) ;
 struct mxs_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;
 int mxs_i2c_pio_check_error_state (struct mxs_i2c_dev*) ;
 int mxs_i2c_pio_trigger_cmd (struct mxs_i2c_dev*,int) ;
 int mxs_i2c_pio_trigger_write_cmd (struct mxs_i2c_dev*,int,int) ;
 int mxs_i2c_pio_wait_xfer_end (struct mxs_i2c_dev*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mxs_i2c_pio_setup_xfer(struct i2c_adapter *adap,
   struct i2c_msg *msg, uint32_t flags)
{
 struct mxs_i2c_dev *i2c = i2c_get_adapdata(adap);
 uint32_t addr_data = i2c_8bit_addr_from_msg(msg);
 uint32_t data = 0;
 int i, ret, xlen = 0, xmit = 0;
 uint32_t start;


 writel(MXS_I2C_IRQ_MASK << 8, i2c->regs + MXS_I2C_CTRL1_CLR);
 if (msg->flags & I2C_M_RD) {
  BUG_ON(msg->len > 4);


  mxs_i2c_pio_trigger_write_cmd(i2c, MXS_CMD_I2C_SELECT,
           addr_data);

  ret = mxs_i2c_pio_wait_xfer_end(i2c);
  if (ret) {
   dev_dbg(i2c->dev,
    "PIO: Failed to send SELECT command!\n");
   goto cleanup;
  }


  mxs_i2c_pio_trigger_cmd(i2c,
     MXS_CMD_I2C_READ | flags |
     MXS_I2C_CTRL0_XFER_COUNT(msg->len));

  ret = mxs_i2c_pio_wait_xfer_end(i2c);
  if (ret) {
   dev_dbg(i2c->dev,
    "PIO: Failed to send READ command!\n");
   goto cleanup;
  }

  data = readl(i2c->regs + MXS_I2C_DATA(i2c));
  for (i = 0; i < msg->len; i++) {
   msg->buf[i] = data & 0xff;
   data >>= 8;
  }
 } else {
  data = addr_data << 24;


  start = MXS_I2C_CTRL0_PRE_SEND_START;


  if (msg->len > 3)
   start |= MXS_I2C_CTRL0_RETAIN_CLOCK;

  for (i = 0; i < msg->len; i++) {
   data >>= 8;
   data |= (msg->buf[i] << 24);

   xmit = 0;


   if (i + 1 == msg->len) {

    start |= flags;

    start &= ~MXS_I2C_CTRL0_RETAIN_CLOCK;
    xmit = 1;
   }


   if ((i & 3) == 2)
    xmit = 1;


   if (!xmit)
    continue;
   if ((i % 4) == 3)
    xlen = 1;
   else
    xlen = (i % 4) + 2;

   data >>= (4 - xlen) * 8;

   dev_dbg(i2c->dev,
    "PIO: len=%i pos=%i total=%i [W%s%s%s]\n",
    xlen, i, msg->len,
    start & MXS_I2C_CTRL0_PRE_SEND_START ? "S" : "",
    start & MXS_I2C_CTRL0_POST_SEND_STOP ? "E" : "",
    start & MXS_I2C_CTRL0_RETAIN_CLOCK ? "C" : "");

   writel(MXS_I2C_DEBUG0_DMAREQ,
          i2c->regs + MXS_I2C_DEBUG0_CLR(i2c));

   mxs_i2c_pio_trigger_write_cmd(i2c,
    start | MXS_I2C_CTRL0_MASTER_MODE |
    MXS_I2C_CTRL0_DIRECTION |
    MXS_I2C_CTRL0_XFER_COUNT(xlen), data);


   start &= ~MXS_I2C_CTRL0_PRE_SEND_START;


   ret = mxs_i2c_pio_wait_xfer_end(i2c);
   if (ret) {
    dev_dbg(i2c->dev,
     "PIO: Failed to finish WRITE cmd!\n");
    break;
   }


   ret = readl(i2c->regs + MXS_I2C_STAT) &
        MXS_I2C_STAT_GOT_A_NAK;
   if (ret) {
    ret = -ENXIO;
    goto cleanup;
   }
  }
 }


 ret = mxs_i2c_pio_check_error_state(i2c);

cleanup:

 writel(MXS_I2C_IRQ_MASK, i2c->regs + MXS_I2C_CTRL1_CLR);
 writel(MXS_I2C_IRQ_MASK << 8, i2c->regs + MXS_I2C_CTRL1_SET);


 if (i2c->dev_type == MXS_I2C_V1)
  writel(MXS_I2C_CTRL0_PIO_MODE, i2c->regs + MXS_I2C_CTRL0_CLR);

 return ret;
}
