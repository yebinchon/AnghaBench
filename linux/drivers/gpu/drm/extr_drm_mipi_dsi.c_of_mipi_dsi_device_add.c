
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_host {int dummy; } ;
struct mipi_dsi_device {int dummy; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 struct mipi_dsi_device* ERR_PTR (int ) ;

__attribute__((used)) static struct mipi_dsi_device *
of_mipi_dsi_device_add(struct mipi_dsi_host *host, struct device_node *node)
{
 return ERR_PTR(-ENODEV);
}
