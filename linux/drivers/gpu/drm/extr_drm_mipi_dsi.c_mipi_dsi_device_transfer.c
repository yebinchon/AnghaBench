
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mipi_dsi_msg {int flags; } ;
struct mipi_dsi_host_ops {int (* transfer ) (TYPE_1__*,struct mipi_dsi_msg*) ;} ;
struct mipi_dsi_device {int mode_flags; TYPE_1__* host; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct mipi_dsi_host_ops* ops; } ;


 int ENOSYS ;
 int MIPI_DSI_MODE_LPM ;
 int MIPI_DSI_MSG_USE_LPM ;
 int stub1 (TYPE_1__*,struct mipi_dsi_msg*) ;

__attribute__((used)) static ssize_t mipi_dsi_device_transfer(struct mipi_dsi_device *dsi,
     struct mipi_dsi_msg *msg)
{
 const struct mipi_dsi_host_ops *ops = dsi->host->ops;

 if (!ops || !ops->transfer)
  return -ENOSYS;

 if (dsi->mode_flags & MIPI_DSI_MODE_LPM)
  msg->flags |= MIPI_DSI_MSG_USE_LPM;

 return ops->transfer(dsi->host, msg);
}
