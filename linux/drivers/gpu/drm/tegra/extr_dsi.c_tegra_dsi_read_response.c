
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct tegra_dsi {int dev; } ;
struct mipi_dsi_msg {int* rx_buf; unsigned int rx_len; } ;
typedef size_t ssize_t ;


 unsigned int ARRAY_SIZE (int *) ;
 int BIT (unsigned int) ;
 int DSI_RD_DATA ;
 size_t EPROTO ;





 int dev_dbg (int ,char*,unsigned int,...) ;
 int dev_err (int ,char*,int) ;
 int * error_report ;
 size_t min (size_t,unsigned int) ;
 int tegra_dsi_readl (struct tegra_dsi*,int ) ;

__attribute__((used)) static ssize_t tegra_dsi_read_response(struct tegra_dsi *dsi,
           const struct mipi_dsi_msg *msg,
           size_t count)
{
 u8 *rx = msg->rx_buf;
 unsigned int i, j, k;
 size_t size = 0;
 u16 errors;
 u32 value;


 value = tegra_dsi_readl(dsi, DSI_RD_DATA);

 switch (value & 0x3f) {
 case 132:
  errors = (value >> 8) & 0xffff;
  dev_dbg(dsi->dev, "Acknowledge and error report: %04x\n",
   errors);
  for (i = 0; i < ARRAY_SIZE(error_report); i++)
   if (errors & BIT(i))
    dev_dbg(dsi->dev, "  %2u: %s\n", i,
     error_report[i]);
  break;

 case 130:
  rx[0] = (value >> 8) & 0xff;
  size = 1;
  break;

 case 129:
  rx[0] = (value >> 8) & 0xff;
  rx[1] = (value >> 16) & 0xff;
  size = 2;
  break;

 case 131:
  size = ((value >> 8) & 0xff00) | ((value >> 8) & 0xff);
  break;

 case 128:
  size = ((value >> 8) & 0xff00) | ((value >> 8) & 0xff);
  break;

 default:
  dev_err(dsi->dev, "unhandled response type: %02x\n",
   value & 0x3f);
  return -EPROTO;
 }

 size = min(size, msg->rx_len);

 if (msg->rx_buf && size > 0) {
  for (i = 0, j = 0; i < count - 1; i++, j += 4) {
   u8 *rx = msg->rx_buf + j;

   value = tegra_dsi_readl(dsi, DSI_RD_DATA);

   for (k = 0; k < 4 && (j + k) < msg->rx_len; k++)
    rx[j + k] = (value >> (k << 3)) & 0xff;
  }
 }

 return size;
}
