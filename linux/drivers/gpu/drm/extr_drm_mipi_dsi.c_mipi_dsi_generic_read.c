
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_msg {size_t tx_len; void const* tx_buf; size_t rx_len; void* rx_buf; int type; int channel; } ;
struct mipi_dsi_device {int channel; } ;
typedef int ssize_t ;


 int EINVAL ;
 int MIPI_DSI_GENERIC_READ_REQUEST_0_PARAM ;
 int MIPI_DSI_GENERIC_READ_REQUEST_1_PARAM ;
 int MIPI_DSI_GENERIC_READ_REQUEST_2_PARAM ;
 int mipi_dsi_device_transfer (struct mipi_dsi_device*,struct mipi_dsi_msg*) ;

ssize_t mipi_dsi_generic_read(struct mipi_dsi_device *dsi, const void *params,
         size_t num_params, void *data, size_t size)
{
 struct mipi_dsi_msg msg = {
  .channel = dsi->channel,
  .tx_len = num_params,
  .tx_buf = params,
  .rx_len = size,
  .rx_buf = data
 };

 switch (num_params) {
 case 0:
  msg.type = MIPI_DSI_GENERIC_READ_REQUEST_0_PARAM;
  break;

 case 1:
  msg.type = MIPI_DSI_GENERIC_READ_REQUEST_1_PARAM;
  break;

 case 2:
  msg.type = MIPI_DSI_GENERIC_READ_REQUEST_2_PARAM;
  break;

 default:
  return -EINVAL;
 }

 return mipi_dsi_device_transfer(dsi, &msg);
}
