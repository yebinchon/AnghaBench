
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_host {int * ops; struct device* dev; } ;
struct dw_dsi {struct mipi_dsi_host host; } ;
struct device {int dummy; } ;


 int DRM_ERROR (char*) ;
 int dsi_host_ops ;
 int mipi_dsi_host_register (struct mipi_dsi_host*) ;

__attribute__((used)) static int dsi_host_init(struct device *dev, struct dw_dsi *dsi)
{
 struct mipi_dsi_host *host = &dsi->host;
 int ret;

 host->dev = dev;
 host->ops = &dsi_host_ops;
 ret = mipi_dsi_host_register(host);
 if (ret) {
  DRM_ERROR("failed to register dsi host\n");
  return ret;
 }

 return 0;
}
