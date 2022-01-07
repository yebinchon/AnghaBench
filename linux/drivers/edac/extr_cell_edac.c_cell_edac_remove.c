
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mem_ctl_info {int dummy; } ;


 struct mem_ctl_info* edac_mc_del_mc (int *) ;
 int edac_mc_free (struct mem_ctl_info*) ;

__attribute__((used)) static int cell_edac_remove(struct platform_device *pdev)
{
 struct mem_ctl_info *mci = edac_mc_del_mc(&pdev->dev);
 if (mci)
  edac_mc_free(mci);
 return 0;
}
