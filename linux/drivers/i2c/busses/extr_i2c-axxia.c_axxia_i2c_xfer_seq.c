
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_msg {int len; } ;
struct axxia_i2c_dev {int last; int msg_err; int adapter; int dev; scalar_t__ base; int msg_complete; scalar_t__ msg_xfrd_r; scalar_t__ msg_xfrd; struct i2c_msg* msg_r; struct i2c_msg* msg; } ;


 int CMD_BUSY ;
 int CMD_SEQUENCE ;
 int ENXIO ;
 int ETIMEDOUT ;
 int I2C_SMBUS_BLOCK_MAX ;
 int I2C_XFER_TIMEOUT ;
 scalar_t__ MST_COMMAND ;
 scalar_t__ MST_RX_XFER ;
 int MST_STATUS_ERR ;
 int MST_STATUS_RFL ;
 int MST_STATUS_SS ;
 scalar_t__ MST_TX_XFER ;
 int axxia_i2c_fill_tx_fifo (struct axxia_i2c_dev*) ;
 scalar_t__ axxia_i2c_handle_seq_nak (struct axxia_i2c_dev*) ;
 int axxia_i2c_init (struct axxia_i2c_dev*) ;
 int axxia_i2c_set_addr (struct axxia_i2c_dev*,struct i2c_msg*) ;
 int dev_warn (int ,char*) ;
 int i2c_int_enable (struct axxia_i2c_dev*,int) ;
 scalar_t__ i2c_m_recv_len (struct i2c_msg*) ;
 int i2c_recover_bus (int *) ;
 int readl (scalar_t__) ;
 int reinit_completion (int *) ;
 scalar_t__ unlikely (int) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int axxia_i2c_xfer_seq(struct axxia_i2c_dev *idev, struct i2c_msg msgs[])
{
 u32 int_mask = MST_STATUS_ERR | MST_STATUS_SS | MST_STATUS_RFL;
 u32 rlen = i2c_m_recv_len(&msgs[1]) ? I2C_SMBUS_BLOCK_MAX : msgs[1].len;
 unsigned long time_left;

 axxia_i2c_set_addr(idev, &msgs[0]);

 writel(msgs[0].len, idev->base + MST_TX_XFER);
 writel(rlen, idev->base + MST_RX_XFER);

 idev->msg = &msgs[0];
 idev->msg_r = &msgs[1];
 idev->msg_xfrd = 0;
 idev->msg_xfrd_r = 0;
 idev->last = 1;
 axxia_i2c_fill_tx_fifo(idev);

 writel(CMD_SEQUENCE, idev->base + MST_COMMAND);

 reinit_completion(&idev->msg_complete);
 i2c_int_enable(idev, int_mask);

 time_left = wait_for_completion_timeout(&idev->msg_complete,
      I2C_XFER_TIMEOUT);

 if (idev->msg_err == -ENXIO) {
  if (axxia_i2c_handle_seq_nak(idev))
   axxia_i2c_init(idev);
 } else if (readl(idev->base + MST_COMMAND) & CMD_BUSY) {
  dev_warn(idev->dev, "busy after xfer\n");
 }

 if (time_left == 0) {
  idev->msg_err = -ETIMEDOUT;
  i2c_recover_bus(&idev->adapter);
  axxia_i2c_init(idev);
 }

 if (unlikely(idev->msg_err) && idev->msg_err != -ENXIO)
  axxia_i2c_init(idev);

 return idev->msg_err;
}
