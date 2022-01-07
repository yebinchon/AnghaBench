
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mipi_dsi_host {struct device* dev; } ;
struct mipi_dsi_device_info {int channel; int type; int node; } ;
struct TYPE_2__ {int of_node; } ;
struct mipi_dsi_device {int channel; int name; TYPE_1__ dev; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct mipi_dsi_device* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct mipi_dsi_device*) ;
 int PTR_ERR (struct mipi_dsi_device*) ;
 int dev_err (struct device*,char*,...) ;
 int kfree (struct mipi_dsi_device*) ;
 int mipi_dsi_device_add (struct mipi_dsi_device*) ;
 struct mipi_dsi_device* mipi_dsi_device_alloc (struct mipi_dsi_host*) ;
 int strlcpy (int ,int ,int) ;

struct mipi_dsi_device *
mipi_dsi_device_register_full(struct mipi_dsi_host *host,
         const struct mipi_dsi_device_info *info)
{
 struct mipi_dsi_device *dsi;
 struct device *dev = host->dev;
 int ret;

 if (!info) {
  dev_err(dev, "invalid mipi_dsi_device_info pointer\n");
  return ERR_PTR(-EINVAL);
 }

 if (info->channel > 3) {
  dev_err(dev, "invalid virtual channel: %u\n", info->channel);
  return ERR_PTR(-EINVAL);
 }

 dsi = mipi_dsi_device_alloc(host);
 if (IS_ERR(dsi)) {
  dev_err(dev, "failed to allocate DSI device %ld\n",
   PTR_ERR(dsi));
  return dsi;
 }

 dsi->dev.of_node = info->node;
 dsi->channel = info->channel;
 strlcpy(dsi->name, info->type, sizeof(dsi->name));

 ret = mipi_dsi_device_add(dsi);
 if (ret) {
  dev_err(dev, "failed to add DSI device %d\n", ret);
  kfree(dsi);
  return ERR_PTR(ret);
 }

 return dsi;
}
