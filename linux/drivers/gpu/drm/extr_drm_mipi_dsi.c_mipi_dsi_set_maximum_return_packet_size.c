
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int tx ;
struct mipi_dsi_msg {int tx_len; int* tx_buf; int type; int channel; } ;
struct mipi_dsi_device {int channel; } ;


 int MIPI_DSI_SET_MAXIMUM_RETURN_PACKET_SIZE ;
 int mipi_dsi_device_transfer (struct mipi_dsi_device*,struct mipi_dsi_msg*) ;

int mipi_dsi_set_maximum_return_packet_size(struct mipi_dsi_device *dsi,
         u16 value)
{
 u8 tx[2] = { value & 0xff, value >> 8 };
 struct mipi_dsi_msg msg = {
  .channel = dsi->channel,
  .type = MIPI_DSI_SET_MAXIMUM_RETURN_PACKET_SIZE,
  .tx_len = sizeof(tx),
  .tx_buf = tx,
 };
 int ret = mipi_dsi_device_transfer(dsi, &msg);

 return (ret < 0) ? ret : 0;
}
