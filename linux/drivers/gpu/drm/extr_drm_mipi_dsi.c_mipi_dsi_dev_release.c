
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_device {int dummy; } ;
struct device {int of_node; } ;


 int kfree (struct mipi_dsi_device*) ;
 int of_node_put (int ) ;
 struct mipi_dsi_device* to_mipi_dsi_device (struct device*) ;

__attribute__((used)) static void mipi_dsi_dev_release(struct device *dev)
{
 struct mipi_dsi_device *dsi = to_mipi_dsi_device(dev);

 of_node_put(dev->of_node);
 kfree(dsi);
}
