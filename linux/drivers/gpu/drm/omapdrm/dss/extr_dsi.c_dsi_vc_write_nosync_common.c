
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dsi_data {int dummy; } ;
typedef enum dss_dsi_content_type { ____Placeholder_dss_dsi_content_type } dss_dsi_content_type ;


 int BUG_ON (int) ;
 int DSS_DSI_CONTENT_DCS ;
 int DSS_DSI_CONTENT_GENERIC ;
 int MIPI_DSI_DCS_LONG_WRITE ;
 int MIPI_DSI_DCS_SHORT_WRITE ;
 int MIPI_DSI_DCS_SHORT_WRITE_PARAM ;
 int MIPI_DSI_GENERIC_LONG_WRITE ;
 int MIPI_DSI_GENERIC_SHORT_WRITE_0_PARAM ;
 int MIPI_DSI_GENERIC_SHORT_WRITE_1_PARAM ;
 int MIPI_DSI_GENERIC_SHORT_WRITE_2_PARAM ;
 int dsi_vc_send_long (struct dsi_data*,int,int ,int*,int,int ) ;
 int dsi_vc_send_short (struct dsi_data*,int,int ,int,int ) ;

__attribute__((used)) static int dsi_vc_write_nosync_common(struct dsi_data *dsi, int channel,
          u8 *data, int len,
          enum dss_dsi_content_type type)
{
 int r;

 if (len == 0) {
  BUG_ON(type == DSS_DSI_CONTENT_DCS);
  r = dsi_vc_send_short(dsi, channel,
    MIPI_DSI_GENERIC_SHORT_WRITE_0_PARAM, 0, 0);
 } else if (len == 1) {
  r = dsi_vc_send_short(dsi, channel,
    type == DSS_DSI_CONTENT_GENERIC ?
    MIPI_DSI_GENERIC_SHORT_WRITE_1_PARAM :
    MIPI_DSI_DCS_SHORT_WRITE, data[0], 0);
 } else if (len == 2) {
  r = dsi_vc_send_short(dsi, channel,
    type == DSS_DSI_CONTENT_GENERIC ?
    MIPI_DSI_GENERIC_SHORT_WRITE_2_PARAM :
    MIPI_DSI_DCS_SHORT_WRITE_PARAM,
    data[0] | (data[1] << 8), 0);
 } else {
  r = dsi_vc_send_long(dsi, channel,
    type == DSS_DSI_CONTENT_GENERIC ?
    MIPI_DSI_GENERIC_LONG_WRITE :
    MIPI_DSI_DCS_LONG_WRITE, data, len, 0);
 }

 return r;
}
