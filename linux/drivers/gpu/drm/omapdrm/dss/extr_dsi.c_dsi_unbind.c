
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int regs; int irqs; int clks; } ;
struct dsi_data {scalar_t__ scp_clk_refcount; int pll; TYPE_1__ debugfs; } ;
struct device {int dummy; } ;


 int WARN_ON (int) ;
 struct dsi_data* dev_get_drvdata (struct device*) ;
 int dss_debugfs_remove_file (int ) ;
 int dss_pll_unregister (int *) ;

__attribute__((used)) static void dsi_unbind(struct device *dev, struct device *master, void *data)
{
 struct dsi_data *dsi = dev_get_drvdata(dev);

 dss_debugfs_remove_file(dsi->debugfs.clks);
 dss_debugfs_remove_file(dsi->debugfs.irqs);
 dss_debugfs_remove_file(dsi->debugfs.regs);

 WARN_ON(dsi->scp_clk_refcount > 0);

 dss_pll_unregister(&dsi->pll);
}
