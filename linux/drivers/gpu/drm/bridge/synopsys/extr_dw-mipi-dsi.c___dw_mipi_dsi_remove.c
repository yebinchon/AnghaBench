
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_mipi_dsi {int dev; int dsi_host; } ;


 int dw_mipi_dsi_debugfs_remove (struct dw_mipi_dsi*) ;
 int mipi_dsi_host_unregister (int *) ;
 int pm_runtime_disable (int ) ;

__attribute__((used)) static void __dw_mipi_dsi_remove(struct dw_mipi_dsi *dsi)
{
 mipi_dsi_host_unregister(&dsi->dsi_host);

 pm_runtime_disable(dsi->dev);
 dw_mipi_dsi_debugfs_remove(dsi);
}
