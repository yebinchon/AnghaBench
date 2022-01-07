
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tegra_dsi {int video_fifo_depth; int host_fifo_depth; int dev; } ;
struct mipi_dsi_packet {int* header; int size; int payload_length; int payload; } ;
struct mipi_dsi_msg {int flags; scalar_t__ rx_len; scalar_t__ rx_buf; } ;
struct mipi_dsi_host {int dummy; } ;
typedef size_t ssize_t ;


 int DSI_CONTROL ;
 int DSI_CONTROL_HOST_ENABLE ;
 int DSI_CONTROL_LANES (int ) ;
 int DSI_HOST_CONTROL ;
 int DSI_HOST_CONTROL_CRC_RESET ;
 int DSI_HOST_CONTROL_CS ;
 int DSI_HOST_CONTROL_ECC ;
 int DSI_HOST_CONTROL_FIFO_RESET ;
 int DSI_HOST_CONTROL_FIFO_SEL ;
 int DSI_HOST_CONTROL_HS ;
 int DSI_HOST_CONTROL_PKT_BTA ;
 int DSI_HOST_CONTROL_TX_TRIG_HOST ;
 int DSI_POWER_CONTROL ;
 int DSI_POWER_CONTROL_ENABLE ;
 int DSI_RD_DATA ;
 int DSI_STATUS ;
 int DSI_STATUS_OVERFLOW ;
 int DSI_STATUS_UNDERFLOW ;
 int DSI_WR_DATA ;
 size_t ENOSPC ;
 int MIPI_DSI_MSG_REQ_ACK ;
 int MIPI_DSI_MSG_USE_LPM ;
 int dev_err (int ,char*,size_t) ;
 struct tegra_dsi* host_to_tegra (struct mipi_dsi_host*) ;
 size_t mipi_dsi_create_packet (struct mipi_dsi_packet*,struct mipi_dsi_msg const*) ;
 size_t tegra_dsi_read_response (struct tegra_dsi*,struct mipi_dsi_msg const*,size_t) ;
 int tegra_dsi_readl (struct tegra_dsi*,int ) ;
 size_t tegra_dsi_transmit (struct tegra_dsi*,int) ;
 size_t tegra_dsi_wait_for_response (struct tegra_dsi*,int) ;
 int tegra_dsi_writel (struct tegra_dsi*,int,int ) ;
 int tegra_dsi_writesl (struct tegra_dsi*,int ,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static ssize_t tegra_dsi_host_transfer(struct mipi_dsi_host *host,
           const struct mipi_dsi_msg *msg)
{
 struct tegra_dsi *dsi = host_to_tegra(host);
 struct mipi_dsi_packet packet;
 const u8 *header;
 size_t count;
 ssize_t err;
 u32 value;

 err = mipi_dsi_create_packet(&packet, msg);
 if (err < 0)
  return err;

 header = packet.header;


 if (packet.size > dsi->video_fifo_depth * 4)
  return -ENOSPC;


 value = tegra_dsi_readl(dsi, DSI_STATUS);
 if (value & (DSI_STATUS_UNDERFLOW | DSI_STATUS_OVERFLOW)) {
  value = DSI_HOST_CONTROL_FIFO_RESET;
  tegra_dsi_writel(dsi, value, DSI_HOST_CONTROL);
  usleep_range(10, 20);
 }

 value = tegra_dsi_readl(dsi, DSI_POWER_CONTROL);
 value |= DSI_POWER_CONTROL_ENABLE;
 tegra_dsi_writel(dsi, value, DSI_POWER_CONTROL);

 usleep_range(5000, 10000);

 value = DSI_HOST_CONTROL_CRC_RESET | DSI_HOST_CONTROL_TX_TRIG_HOST |
  DSI_HOST_CONTROL_CS | DSI_HOST_CONTROL_ECC;

 if ((msg->flags & MIPI_DSI_MSG_USE_LPM) == 0)
  value |= DSI_HOST_CONTROL_HS;





 if (packet.size > dsi->host_fifo_depth * 4)
  value |= DSI_HOST_CONTROL_FIFO_SEL;

 tegra_dsi_writel(dsi, value, DSI_HOST_CONTROL);





 if ((msg->flags & MIPI_DSI_MSG_REQ_ACK) ||
     (msg->rx_buf && msg->rx_len > 0)) {
  value = tegra_dsi_readl(dsi, DSI_HOST_CONTROL);
  value |= DSI_HOST_CONTROL_PKT_BTA;
  tegra_dsi_writel(dsi, value, DSI_HOST_CONTROL);
 }

 value = DSI_CONTROL_LANES(0) | DSI_CONTROL_HOST_ENABLE;
 tegra_dsi_writel(dsi, value, DSI_CONTROL);


 value = header[2] << 16 | header[1] << 8 | header[0];
 tegra_dsi_writel(dsi, value, DSI_WR_DATA);


 if (packet.payload_length > 0)
  tegra_dsi_writesl(dsi, DSI_WR_DATA, packet.payload,
      packet.payload_length);

 err = tegra_dsi_transmit(dsi, 250);
 if (err < 0)
  return err;

 if ((msg->flags & MIPI_DSI_MSG_REQ_ACK) ||
     (msg->rx_buf && msg->rx_len > 0)) {
  err = tegra_dsi_wait_for_response(dsi, 250);
  if (err < 0)
   return err;

  count = err;

  value = tegra_dsi_readl(dsi, DSI_RD_DATA);
  switch (value) {
  case 0x84:



   break;

  case 0x87:



   break;

  default:
   dev_err(dsi->dev, "unknown status: %08x\n", value);
   break;
  }

  if (count > 1) {
   err = tegra_dsi_read_response(dsi, msg, count);
   if (err < 0)
    dev_err(dsi->dev,
     "failed to parse response: %zd\n",
     err);
   else {




    count = err;
   }
  }
 } else {




  count = 4 + packet.payload_length;
 }

 return count;
}
