
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_msg {void const* tx_buf; size_t tx_len; int type; int channel; } ;
struct mipi_dsi_device {int channel; } ;
typedef int ssize_t ;


 int EINVAL ;
 int MIPI_DSI_DCS_LONG_WRITE ;
 int MIPI_DSI_DCS_SHORT_WRITE ;
 int MIPI_DSI_DCS_SHORT_WRITE_PARAM ;
 int mipi_dsi_device_transfer (struct mipi_dsi_device*,struct mipi_dsi_msg*) ;

ssize_t mipi_dsi_dcs_write_buffer(struct mipi_dsi_device *dsi,
      const void *data, size_t len)
{
 struct mipi_dsi_msg msg = {
  .channel = dsi->channel,
  .tx_buf = data,
  .tx_len = len
 };

 switch (len) {
 case 0:
  return -EINVAL;

 case 1:
  msg.type = MIPI_DSI_DCS_SHORT_WRITE;
  break;

 case 2:
  msg.type = MIPI_DSI_DCS_SHORT_WRITE_PARAM;
  break;

 default:
  msg.type = MIPI_DSI_DCS_LONG_WRITE;
  break;
 }

 return mipi_dsi_device_transfer(dsi, &msg);
}
