
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mipi_dsi_host_ops {int (* attach ) (TYPE_1__*,struct mipi_dsi_device*) ;} ;
struct mipi_dsi_device {TYPE_1__* host; } ;
struct TYPE_2__ {struct mipi_dsi_host_ops* ops; } ;


 int ENOSYS ;
 int stub1 (TYPE_1__*,struct mipi_dsi_device*) ;

int mipi_dsi_attach(struct mipi_dsi_device *dsi)
{
 const struct mipi_dsi_host_ops *ops = dsi->host->ops;

 if (!ops || !ops->attach)
  return -ENOSYS;

 return ops->attach(dsi->host, dsi);
}
