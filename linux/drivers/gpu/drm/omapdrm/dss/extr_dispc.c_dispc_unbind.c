
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_device {int * dispc_ops; int * dispc; } ;
struct dispc_device {int debugfs; struct dss_device* dss; } ;
struct device {int dummy; } ;


 struct dispc_device* dev_get_drvdata (struct device*) ;
 int dispc_errata_i734_wa_fini (struct dispc_device*) ;
 int dss_debugfs_remove_file (int ) ;
 int kfree (struct dispc_device*) ;
 int pm_runtime_disable (struct device*) ;

__attribute__((used)) static void dispc_unbind(struct device *dev, struct device *master, void *data)
{
 struct dispc_device *dispc = dev_get_drvdata(dev);
 struct dss_device *dss = dispc->dss;

 dss_debugfs_remove_file(dispc->debugfs);

 dss->dispc = ((void*)0);
 dss->dispc_ops = ((void*)0);

 pm_runtime_disable(dev);

 dispc_errata_i734_wa_fini(dispc);

 kfree(dispc);
}
