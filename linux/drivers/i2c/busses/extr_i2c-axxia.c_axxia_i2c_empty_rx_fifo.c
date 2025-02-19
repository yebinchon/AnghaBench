
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int len; int* buf; } ;
struct axxia_i2c_dev {int msg_xfrd_r; scalar_t__ base; int msg_complete; int msg_err; struct i2c_msg* msg_r; } ;


 int EPROTO ;
 int I2C_SMBUS_BLOCK_MAX ;
 scalar_t__ MST_DATA ;
 scalar_t__ MST_RX_FIFO ;
 scalar_t__ MST_RX_XFER ;
 int MST_STATUS_TSS ;
 int complete (int *) ;
 int i2c_int_disable (struct axxia_i2c_dev*,int ) ;
 scalar_t__ i2c_m_recv_len (struct i2c_msg*) ;
 int min (size_t,int) ;
 void* readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int axxia_i2c_empty_rx_fifo(struct axxia_i2c_dev *idev)
{
 struct i2c_msg *msg = idev->msg_r;
 size_t rx_fifo_avail = readl(idev->base + MST_RX_FIFO);
 int bytes_to_transfer = min(rx_fifo_avail, msg->len - idev->msg_xfrd_r);

 while (bytes_to_transfer-- > 0) {
  int c = readl(idev->base + MST_DATA);

  if (idev->msg_xfrd_r == 0 && i2c_m_recv_len(msg)) {



   if (c <= 0 || c > I2C_SMBUS_BLOCK_MAX) {
    idev->msg_err = -EPROTO;
    i2c_int_disable(idev, ~MST_STATUS_TSS);
    complete(&idev->msg_complete);
    break;
   }
   msg->len = 1 + c;
   writel(msg->len, idev->base + MST_RX_XFER);
  }
  msg->buf[idev->msg_xfrd_r++] = c;
 }

 return 0;
}
