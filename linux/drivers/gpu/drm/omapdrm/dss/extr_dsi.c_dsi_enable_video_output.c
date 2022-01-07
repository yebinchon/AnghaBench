
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int hactive; } ;
struct dsi_data {int pix_fmt; scalar_t__ mode; int output; TYPE_1__ vm; } ;


 int DIV_ROUND_UP (int,int) ;
 int DSI_VC_CTRL (int) ;
 int EINVAL ;
 int MIPI_DSI_PACKED_PIXEL_STREAM_16 ;
 int MIPI_DSI_PACKED_PIXEL_STREAM_18 ;
 int MIPI_DSI_PACKED_PIXEL_STREAM_24 ;
 int MIPI_DSI_PIXEL_STREAM_3BYTE_18 ;




 scalar_t__ OMAP_DSS_DSI_VIDEO_MODE ;
 int REG_FLD_MOD (struct dsi_data*,int ,int,int,int) ;
 int dsi_display_init_dispc (struct dsi_data*) ;
 int dsi_display_uninit_dispc (struct dsi_data*) ;
 int dsi_get_pixel_size (int) ;
 int dsi_if_enable (struct dsi_data*,int) ;
 int dsi_vc_enable (struct dsi_data*,int,int) ;
 int dsi_vc_write_long_header (struct dsi_data*,int,int ,int ,int ) ;
 int dss_mgr_enable (int *) ;
 struct dsi_data* to_dsi_data (struct omap_dss_device*) ;

__attribute__((used)) static int dsi_enable_video_output(struct omap_dss_device *dssdev, int channel)
{
 struct dsi_data *dsi = to_dsi_data(dssdev);
 int bpp = dsi_get_pixel_size(dsi->pix_fmt);
 u8 data_type;
 u16 word_count;
 int r;

 r = dsi_display_init_dispc(dsi);
 if (r)
  return r;

 if (dsi->mode == OMAP_DSS_DSI_VIDEO_MODE) {
  switch (dsi->pix_fmt) {
  case 128:
   data_type = MIPI_DSI_PACKED_PIXEL_STREAM_24;
   break;
  case 130:
   data_type = MIPI_DSI_PIXEL_STREAM_3BYTE_18;
   break;
  case 129:
   data_type = MIPI_DSI_PACKED_PIXEL_STREAM_18;
   break;
  case 131:
   data_type = MIPI_DSI_PACKED_PIXEL_STREAM_16;
   break;
  default:
   r = -EINVAL;
   goto err_pix_fmt;
  }

  dsi_if_enable(dsi, 0);
  dsi_vc_enable(dsi, channel, 0);


  REG_FLD_MOD(dsi, DSI_VC_CTRL(channel), 1, 4, 4);

  word_count = DIV_ROUND_UP(dsi->vm.hactive * bpp, 8);

  dsi_vc_write_long_header(dsi, channel, data_type,
    word_count, 0);

  dsi_vc_enable(dsi, channel, 1);
  dsi_if_enable(dsi, 1);
 }

 r = dss_mgr_enable(&dsi->output);
 if (r)
  goto err_mgr_enable;

 return 0;

err_mgr_enable:
 if (dsi->mode == OMAP_DSS_DSI_VIDEO_MODE) {
  dsi_if_enable(dsi, 0);
  dsi_vc_enable(dsi, channel, 0);
 }
err_pix_fmt:
 dsi_display_uninit_dispc(dsi);
 return r;
}
