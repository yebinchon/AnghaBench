
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_2__ {int dss; int clk; } ;
struct dss_device {scalar_t__ video2_pll; scalar_t__ video1_pll; TYPE_1__ debugfs; } ;


 int component_master_del (int *,int *) ;
 int dss_component_ops ;
 int dss_debugfs_remove_file (int ) ;
 int dss_put_clocks (struct dss_device*) ;
 int dss_uninit_ports (struct dss_device*) ;
 int dss_uninitialize_debugfs (struct dss_device*) ;
 int dss_video_pll_uninit (scalar_t__) ;
 int kfree (struct dss_device*) ;
 int of_platform_depopulate (int *) ;
 struct dss_device* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int dss_remove(struct platform_device *pdev)
{
 struct dss_device *dss = platform_get_drvdata(pdev);

 of_platform_depopulate(&pdev->dev);

 component_master_del(&pdev->dev, &dss_component_ops);

 dss_debugfs_remove_file(dss->debugfs.clk);
 dss_debugfs_remove_file(dss->debugfs.dss);
 dss_uninitialize_debugfs(dss);

 pm_runtime_disable(&pdev->dev);

 dss_uninit_ports(dss);

 if (dss->video1_pll)
  dss_video_pll_uninit(dss->video1_pll);

 if (dss->video2_pll)
  dss_video_pll_uninit(dss->video2_pll);

 dss_put_clocks(dss);

 kfree(dss);

 return 0;
}
