
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct omap_dss_device {int dummy; } ;
struct dsi_data {int dummy; } ;


 int MIPI_DSI_SET_MAXIMUM_RETURN_PACKET_SIZE ;
 int dsi_vc_send_short (struct dsi_data*,int,int ,int ,int ) ;
 struct dsi_data* to_dsi_data (struct omap_dss_device*) ;

__attribute__((used)) static int dsi_vc_set_max_rx_packet_size(struct omap_dss_device *dssdev, int channel,
  u16 len)
{
 struct dsi_data *dsi = to_dsi_data(dssdev);

 return dsi_vc_send_short(dsi, channel,
   MIPI_DSI_SET_MAXIMUM_RETURN_PACKET_SIZE, len, 0);
}
