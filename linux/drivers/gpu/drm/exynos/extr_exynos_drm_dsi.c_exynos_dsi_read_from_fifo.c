
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct exynos_dsi_transfer {int* rx_payload; int rx_done; int rx_len; scalar_t__ result; } ;
struct exynos_dsi {struct device* dev; } ;
struct device {int dummy; } ;


 int DSIM_RXFIFO_REG ;
 int DSI_RX_FIFO_EMPTY ;
 int DSI_RX_FIFO_SIZE ;





 int dev_err (struct device*,char*,int,...) ;
 int exynos_dsi_read (struct exynos_dsi*,int ) ;

__attribute__((used)) static void exynos_dsi_read_from_fifo(struct exynos_dsi *dsi,
     struct exynos_dsi_transfer *xfer)
{
 u8 *payload = xfer->rx_payload + xfer->rx_done;
 bool first = !xfer->rx_done;
 struct device *dev = dsi->dev;
 u16 length;
 u32 reg;

 if (first) {
  reg = exynos_dsi_read(dsi, DSIM_RXFIFO_REG);

  switch (reg & 0x3f) {
  case 128:
  case 130:
   if (xfer->rx_len >= 2) {
    payload[1] = reg >> 16;
    ++xfer->rx_done;
   }

  case 129:
  case 131:
   payload[0] = reg >> 8;
   ++xfer->rx_done;
   xfer->rx_len = xfer->rx_done;
   xfer->result = 0;
   goto clear_fifo;
  case 132:
   dev_err(dev, "DSI Error Report: 0x%04x\n",
    (reg >> 8) & 0xffff);
   xfer->result = 0;
   goto clear_fifo;
  }

  length = (reg >> 8) & 0xffff;
  if (length > xfer->rx_len) {
   dev_err(dev,
    "response too long (%u > %u bytes), stripping\n",
    xfer->rx_len, length);
   length = xfer->rx_len;
  } else if (length < xfer->rx_len)
   xfer->rx_len = length;
 }

 length = xfer->rx_len - xfer->rx_done;
 xfer->rx_done += length;


 while (length >= 4) {
  reg = exynos_dsi_read(dsi, DSIM_RXFIFO_REG);
  payload[0] = (reg >> 0) & 0xff;
  payload[1] = (reg >> 8) & 0xff;
  payload[2] = (reg >> 16) & 0xff;
  payload[3] = (reg >> 24) & 0xff;
  payload += 4;
  length -= 4;
 }

 if (length) {
  reg = exynos_dsi_read(dsi, DSIM_RXFIFO_REG);
  switch (length) {
  case 3:
   payload[2] = (reg >> 16) & 0xff;

  case 2:
   payload[1] = (reg >> 8) & 0xff;

  case 1:
   payload[0] = reg & 0xff;
  }
 }

 if (xfer->rx_done == xfer->rx_len)
  xfer->result = 0;

clear_fifo:
 length = DSI_RX_FIFO_SIZE / 4;
 do {
  reg = exynos_dsi_read(dsi, DSIM_RXFIFO_REG);
  if (reg == DSI_RX_FIFO_EMPTY)
   break;
 } while (--length);
}
