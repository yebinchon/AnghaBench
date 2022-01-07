
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct xlp9xx_i2c_dev {int * msg_buf; int msg_buf_remaining; } ;


 int XLP9XX_I2C_FIFO_SIZE ;
 int XLP9XX_I2C_MTXFIFO ;
 size_t min (int ,int ) ;
 int xlp9xx_write_i2c_reg (struct xlp9xx_i2c_dev*,int ,int ) ;

__attribute__((used)) static void xlp9xx_i2c_fill_tx_fifo(struct xlp9xx_i2c_dev *priv)
{
 u32 len, i;
 u8 *buf = priv->msg_buf;

 len = min(priv->msg_buf_remaining, XLP9XX_I2C_FIFO_SIZE);
 for (i = 0; i < len; i++)
  xlp9xx_write_i2c_reg(priv, XLP9XX_I2C_MTXFIFO, buf[i]);
 priv->msg_buf_remaining -= len;
 priv->msg_buf += len;
}
