
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mipi_dsi_host {int dev; } ;
struct TYPE_2__ {int * type; int parent; int * bus; } ;
struct mipi_dsi_device {TYPE_1__ dev; struct mipi_dsi_host* host; } ;


 int ENOMEM ;
 struct mipi_dsi_device* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int device_initialize (TYPE_1__*) ;
 struct mipi_dsi_device* kzalloc (int,int ) ;
 int mipi_dsi_bus_type ;
 int mipi_dsi_device_type ;

__attribute__((used)) static struct mipi_dsi_device *mipi_dsi_device_alloc(struct mipi_dsi_host *host)
{
 struct mipi_dsi_device *dsi;

 dsi = kzalloc(sizeof(*dsi), GFP_KERNEL);
 if (!dsi)
  return ERR_PTR(-ENOMEM);

 dsi->host = host;
 dsi->dev.bus = &mipi_dsi_bus_type;
 dsi->dev.parent = host->dev;
 dsi->dev.type = &mipi_dsi_device_type;

 device_initialize(&dsi->dev);

 return dsi;
}
