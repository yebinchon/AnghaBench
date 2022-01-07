
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct xlp9xx_i2c_dev {int* msg_buf; int len_recv; int msg_buf_remaining; int msg_len; scalar_t__ client_pec; } ;


 int I2C_SMBUS_BLOCK_MAX ;
 int XLP9XX_I2C_FIFOWCNT ;
 int XLP9XX_I2C_FIFO_WCNT_MASK ;
 int XLP9XX_I2C_MRXFIFO ;
 int min (int,int) ;
 int xlp9xx_i2c_update_rlen (struct xlp9xx_i2c_dev*) ;
 int xlp9xx_i2c_update_rx_fifo_thres (struct xlp9xx_i2c_dev*) ;
 int xlp9xx_read_i2c_reg (struct xlp9xx_i2c_dev*,int ) ;

__attribute__((used)) static void xlp9xx_i2c_drain_rx_fifo(struct xlp9xx_i2c_dev *priv)
{
 u32 len, i;
 u8 rlen, *buf = priv->msg_buf;

 len = xlp9xx_read_i2c_reg(priv, XLP9XX_I2C_FIFOWCNT) &
      XLP9XX_I2C_FIFO_WCNT_MASK;
 if (!len)
  return;
 if (priv->len_recv) {

  rlen = xlp9xx_read_i2c_reg(priv, XLP9XX_I2C_MRXFIFO);
  len--;
  if (rlen > I2C_SMBUS_BLOCK_MAX || rlen == 0) {
   rlen = 0;
   priv->msg_buf_remaining = 0;
   priv->msg_len = 0;
   xlp9xx_i2c_update_rlen(priv);
   return;
  }

  *buf++ = rlen;
  if (priv->client_pec)
   ++rlen;

  priv->msg_buf_remaining = rlen;
  priv->msg_len = rlen + 1;
  xlp9xx_i2c_update_rlen(priv);
  priv->len_recv = 0;
 }

 len = min(priv->msg_buf_remaining, len);
 for (i = 0; i < len; i++, buf++)
  *buf = xlp9xx_read_i2c_reg(priv, XLP9XX_I2C_MRXFIFO);

 priv->msg_buf_remaining -= len;
 priv->msg_buf = buf;

 if (priv->msg_buf_remaining)
  xlp9xx_i2c_update_rx_fifo_thres(priv);
}
