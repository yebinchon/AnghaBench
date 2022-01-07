
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct fpga_bridge {struct fme_br_priv* priv; } ;
struct fme_br_priv {struct platform_device* port_pdev; struct dfl_fpga_port_ops* port_ops; TYPE_1__* pdata; } ;
struct dfl_fpga_port_ops {int (* enable_set ) (struct platform_device*,int) ;} ;
struct TYPE_2__ {int port_id; int cdev; } ;


 int ENODEV ;
 int ENOENT ;
 struct platform_device* dfl_fpga_cdev_find_port (int ,int *,int ) ;
 int dfl_fpga_check_port_id ;
 struct dfl_fpga_port_ops* dfl_fpga_port_ops_get (struct platform_device*) ;
 int stub1 (struct platform_device*,int) ;

__attribute__((used)) static int fme_bridge_enable_set(struct fpga_bridge *bridge, bool enable)
{
 struct fme_br_priv *priv = bridge->priv;
 struct platform_device *port_pdev;
 struct dfl_fpga_port_ops *ops;

 if (!priv->port_pdev) {
  port_pdev = dfl_fpga_cdev_find_port(priv->pdata->cdev,
          &priv->pdata->port_id,
          dfl_fpga_check_port_id);
  if (!port_pdev)
   return -ENODEV;

  priv->port_pdev = port_pdev;
 }

 if (priv->port_pdev && !priv->port_ops) {
  ops = dfl_fpga_port_ops_get(priv->port_pdev);
  if (!ops || !ops->enable_set)
   return -ENOENT;

  priv->port_ops = ops;
 }

 return priv->port_ops->enable_set(priv->port_pdev, enable);
}
