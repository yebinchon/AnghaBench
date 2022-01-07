
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mem_ctl_info {int dummy; } ;


 int edac_mc_del_mc (int *) ;
 int edac_mc_free (struct mem_ctl_info*) ;
 struct mem_ctl_info* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int octeon_lmc_edac_remove(struct platform_device *pdev)
{
 struct mem_ctl_info *mci = platform_get_drvdata(pdev);

 edac_mc_del_mc(&pdev->dev);
 edac_mc_free(mci);
 return 0;
}
