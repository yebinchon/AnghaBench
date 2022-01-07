
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_host {int dev; } ;
struct mipi_dsi_device {int dev; int channel; struct mipi_dsi_host* host; } ;


 int dev_name (int ) ;
 int dev_set_name (int *,char*,int ,int ) ;
 int device_add (int *) ;

__attribute__((used)) static int mipi_dsi_device_add(struct mipi_dsi_device *dsi)
{
 struct mipi_dsi_host *host = dsi->host;

 dev_set_name(&dsi->dev, "%s.%d", dev_name(host->dev), dsi->channel);

 return device_add(&dsi->dev);
}
