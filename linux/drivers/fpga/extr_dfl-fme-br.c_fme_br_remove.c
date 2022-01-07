
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct fpga_bridge {struct fme_br_priv* priv; } ;
struct fme_br_priv {scalar_t__ port_ops; TYPE_1__* port_pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dfl_fpga_port_ops_put (scalar_t__) ;
 int fpga_bridge_unregister (struct fpga_bridge*) ;
 struct fpga_bridge* platform_get_drvdata (struct platform_device*) ;
 int put_device (int *) ;

__attribute__((used)) static int fme_br_remove(struct platform_device *pdev)
{
 struct fpga_bridge *br = platform_get_drvdata(pdev);
 struct fme_br_priv *priv = br->priv;

 fpga_bridge_unregister(br);

 if (priv->port_pdev)
  put_device(&priv->port_pdev->dev);
 if (priv->port_ops)
  dfl_fpga_port_ops_put(priv->port_ops);

 return 0;
}
