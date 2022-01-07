
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpi2c_imx_struct {unsigned int* rx_buf; int delivered; unsigned int msglen; scalar_t__ base; scalar_t__ block_data; int complete; } ;


 unsigned int CHUNK_DATA ;
 scalar_t__ LPI2C_MRDR ;
 scalar_t__ LPI2C_MTDR ;
 int MIER_RDIE ;
 unsigned int MRDR_RXEMPTY ;
 int RECV_DATA ;
 int complete (int *) ;
 int lpi2c_imx_intctrl (struct lpi2c_imx_struct*,int ) ;
 int lpi2c_imx_set_rx_watermark (struct lpi2c_imx_struct*) ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void lpi2c_imx_read_rxfifo(struct lpi2c_imx_struct *lpi2c_imx)
{
 unsigned int blocklen, remaining;
 unsigned int temp, data;

 do {
  data = readl(lpi2c_imx->base + LPI2C_MRDR);
  if (data & MRDR_RXEMPTY)
   break;

  lpi2c_imx->rx_buf[lpi2c_imx->delivered++] = data & 0xff;
 } while (1);





 if (lpi2c_imx->block_data) {
  blocklen = lpi2c_imx->rx_buf[0];
  lpi2c_imx->msglen += blocklen;
 }

 remaining = lpi2c_imx->msglen - lpi2c_imx->delivered;

 if (!remaining) {
  complete(&lpi2c_imx->complete);
  return;
 }


 lpi2c_imx_set_rx_watermark(lpi2c_imx);


 if (lpi2c_imx->block_data) {
  lpi2c_imx->block_data = 0;
  temp = remaining;
  temp |= (RECV_DATA << 8);
  writel(temp, lpi2c_imx->base + LPI2C_MTDR);
 } else if (!(lpi2c_imx->delivered & 0xff)) {
  temp = (remaining > CHUNK_DATA ? CHUNK_DATA : remaining) - 1;
  temp |= (RECV_DATA << 8);
  writel(temp, lpi2c_imx->base + LPI2C_MTDR);
 }

 lpi2c_imx_intctrl(lpi2c_imx, MIER_RDIE);
}
