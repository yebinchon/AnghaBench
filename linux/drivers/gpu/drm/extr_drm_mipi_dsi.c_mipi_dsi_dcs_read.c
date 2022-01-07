
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mipi_dsi_msg {int tx_len; void* rx_buf; size_t rx_len; int * tx_buf; int type; int channel; } ;
struct mipi_dsi_device {int channel; } ;
typedef int ssize_t ;


 int MIPI_DSI_DCS_READ ;
 int mipi_dsi_device_transfer (struct mipi_dsi_device*,struct mipi_dsi_msg*) ;

ssize_t mipi_dsi_dcs_read(struct mipi_dsi_device *dsi, u8 cmd, void *data,
     size_t len)
{
 struct mipi_dsi_msg msg = {
  .channel = dsi->channel,
  .type = MIPI_DSI_DCS_READ,
  .tx_buf = &cmd,
  .tx_len = 1,
  .rx_buf = data,
  .rx_len = len
 };

 return mipi_dsi_device_transfer(dsi, &msg);
}
