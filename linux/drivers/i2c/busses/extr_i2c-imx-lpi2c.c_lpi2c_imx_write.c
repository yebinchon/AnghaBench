
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpi2c_imx_struct {int tx_buf; } ;
struct i2c_msg {int buf; } ;


 int lpi2c_imx_set_tx_watermark (struct lpi2c_imx_struct*) ;
 int lpi2c_imx_write_txfifo (struct lpi2c_imx_struct*) ;

__attribute__((used)) static void lpi2c_imx_write(struct lpi2c_imx_struct *lpi2c_imx,
       struct i2c_msg *msgs)
{
 lpi2c_imx->tx_buf = msgs->buf;
 lpi2c_imx_set_tx_watermark(lpi2c_imx);
 lpi2c_imx_write_txfifo(lpi2c_imx);
}
