
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct omap_dss_device {int dummy; } ;
struct dsi_data {int dummy; } ;


 int DSSERR (char*,int,int ) ;
 int DSS_DSI_CONTENT_DCS ;
 int EIO ;
 int dsi_vc_dcs_send_read_request (struct dsi_data*,int,int ) ;
 int dsi_vc_read_rx_fifo (struct dsi_data*,int,int *,int,int ) ;
 int dsi_vc_send_bta_sync (struct omap_dss_device*,int) ;
 struct dsi_data* to_dsi_data (struct omap_dss_device*) ;

__attribute__((used)) static int dsi_vc_dcs_read(struct omap_dss_device *dssdev, int channel, u8 dcs_cmd,
  u8 *buf, int buflen)
{
 struct dsi_data *dsi = to_dsi_data(dssdev);
 int r;

 r = dsi_vc_dcs_send_read_request(dsi, channel, dcs_cmd);
 if (r)
  goto err;

 r = dsi_vc_send_bta_sync(dssdev, channel);
 if (r)
  goto err;

 r = dsi_vc_read_rx_fifo(dsi, channel, buf, buflen,
  DSS_DSI_CONTENT_DCS);
 if (r < 0)
  goto err;

 if (r != buflen) {
  r = -EIO;
  goto err;
 }

 return 0;
err:
 DSSERR("dsi_vc_dcs_read(ch %d, cmd 0x%02x) failed\n", channel, dcs_cmd);
 return r;
}
