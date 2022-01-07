
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mipi_dsi_host_ops {int (* detach ) (TYPE_1__*,struct mipi_dsi_device*) ;} ;
struct mipi_dsi_device {TYPE_1__* host; } ;
struct TYPE_2__ {struct mipi_dsi_host_ops* ops; } ;


 int ENOSYS ;
 int stub1 (TYPE_1__*,struct mipi_dsi_device*) ;

int mipi_dsi_detach(struct mipi_dsi_device *dsi)
{
 const struct mipi_dsi_host_ops *ops = dsi->host->ops;

 if (!ops || !ops->detach)
  return -ENOSYS;

 return ops->detach(dsi->host, dsi);
}
