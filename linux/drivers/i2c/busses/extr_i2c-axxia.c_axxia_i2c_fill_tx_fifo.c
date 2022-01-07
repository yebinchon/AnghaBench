
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int len; int * buf; } ;
struct axxia_i2c_dev {int msg_xfrd; scalar_t__ base; struct i2c_msg* msg; } ;


 size_t FIFO_SIZE ;
 scalar_t__ MST_DATA ;
 scalar_t__ MST_TX_FIFO ;
 int min (size_t,int) ;
 size_t readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int axxia_i2c_fill_tx_fifo(struct axxia_i2c_dev *idev)
{
 struct i2c_msg *msg = idev->msg;
 size_t tx_fifo_avail = FIFO_SIZE - readl(idev->base + MST_TX_FIFO);
 int bytes_to_transfer = min(tx_fifo_avail, msg->len - idev->msg_xfrd);
 int ret = msg->len - idev->msg_xfrd - bytes_to_transfer;

 while (bytes_to_transfer-- > 0)
  writel(msg->buf[idev->msg_xfrd++], idev->base + MST_DATA);

 return ret;
}
