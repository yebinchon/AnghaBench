
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpi2c_imx_struct {int block_data; scalar_t__ base; int rx_buf; } ;
struct i2c_msg {int flags; int len; int buf; } ;


 int CHUNK_DATA ;
 int I2C_M_RECV_LEN ;
 scalar_t__ LPI2C_MTDR ;
 int MIER_NDIE ;
 int MIER_RDIE ;
 int RECV_DATA ;
 int lpi2c_imx_intctrl (struct lpi2c_imx_struct*,int) ;
 int lpi2c_imx_set_rx_watermark (struct lpi2c_imx_struct*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void lpi2c_imx_read(struct lpi2c_imx_struct *lpi2c_imx,
      struct i2c_msg *msgs)
{
 unsigned int temp;

 lpi2c_imx->rx_buf = msgs->buf;
 lpi2c_imx->block_data = msgs->flags & I2C_M_RECV_LEN;

 lpi2c_imx_set_rx_watermark(lpi2c_imx);
 temp = msgs->len > CHUNK_DATA ? CHUNK_DATA - 1 : msgs->len - 1;
 temp |= (RECV_DATA << 8);
 writel(temp, lpi2c_imx->base + LPI2C_MTDR);

 lpi2c_imx_intctrl(lpi2c_imx, MIER_RDIE | MIER_NDIE);
}
