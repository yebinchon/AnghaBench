
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc4_dsi {int lanes; int mode_flags; int divider; TYPE_1__* pdev; int format; int channel; } ;
struct mipi_dsi_host {int dummy; } ;
struct mipi_dsi_device {int lanes; int mode_flags; int format; int channel; } ;
struct TYPE_2__ {int dev; } ;


 int DSI_PFORMAT_RGB565 ;
 int DSI_PFORMAT_RGB666 ;
 int DSI_PFORMAT_RGB666_PACKED ;
 int DSI_PFORMAT_RGB888 ;




 int MIPI_DSI_MODE_VIDEO ;
 int dev_err (int *,char*,...) ;
 struct vc4_dsi* host_to_dsi (struct mipi_dsi_host*) ;

__attribute__((used)) static int vc4_dsi_host_attach(struct mipi_dsi_host *host,
          struct mipi_dsi_device *device)
{
 struct vc4_dsi *dsi = host_to_dsi(host);

 dsi->lanes = device->lanes;
 dsi->channel = device->channel;
 dsi->mode_flags = device->mode_flags;

 switch (device->format) {
 case 128:
  dsi->format = DSI_PFORMAT_RGB888;
  dsi->divider = 24 / dsi->lanes;
  break;
 case 130:
  dsi->format = DSI_PFORMAT_RGB666;
  dsi->divider = 24 / dsi->lanes;
  break;
 case 129:
  dsi->format = DSI_PFORMAT_RGB666_PACKED;
  dsi->divider = 18 / dsi->lanes;
  break;
 case 131:
  dsi->format = DSI_PFORMAT_RGB565;
  dsi->divider = 16 / dsi->lanes;
  break;
 default:
  dev_err(&dsi->pdev->dev, "Unknown DSI format: %d.\n",
   dsi->format);
  return 0;
 }

 if (!(dsi->mode_flags & MIPI_DSI_MODE_VIDEO)) {
  dev_err(&dsi->pdev->dev,
   "Only VIDEO mode panels supported currently.\n");
  return 0;
 }

 return 0;
}
