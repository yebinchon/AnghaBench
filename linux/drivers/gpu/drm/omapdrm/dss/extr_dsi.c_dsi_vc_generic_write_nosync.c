
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct omap_dss_device {int dummy; } ;
struct dsi_data {int dummy; } ;


 int DSS_DSI_CONTENT_GENERIC ;
 int dsi_vc_write_nosync_common (struct dsi_data*,int,int *,int,int ) ;
 struct dsi_data* to_dsi_data (struct omap_dss_device*) ;

__attribute__((used)) static int dsi_vc_generic_write_nosync(struct omap_dss_device *dssdev, int channel,
  u8 *data, int len)
{
 struct dsi_data *dsi = to_dsi_data(dssdev);

 return dsi_vc_write_nosync_common(dsi, channel, data, len,
   DSS_DSI_CONTENT_GENERIC);
}
