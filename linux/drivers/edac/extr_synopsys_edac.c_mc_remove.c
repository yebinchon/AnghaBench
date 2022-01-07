
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct synps_edac_priv {TYPE_1__* p_data; } ;
struct platform_device {int dev; } ;
struct mem_ctl_info {struct synps_edac_priv* pvt_info; } ;
struct TYPE_2__ {int quirks; } ;


 int DDR_ECC_DATA_POISON_SUPPORT ;
 int DDR_ECC_INTR_SUPPORT ;
 int disable_intr (struct synps_edac_priv*) ;
 int edac_mc_del_mc (int *) ;
 int edac_mc_free (struct mem_ctl_info*) ;
 int edac_remove_sysfs_attributes (struct mem_ctl_info*) ;
 struct mem_ctl_info* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mc_remove(struct platform_device *pdev)
{
 struct mem_ctl_info *mci = platform_get_drvdata(pdev);
 struct synps_edac_priv *priv = mci->pvt_info;

 if (priv->p_data->quirks & DDR_ECC_INTR_SUPPORT)
  disable_intr(priv);






 edac_mc_del_mc(&pdev->dev);
 edac_mc_free(mci);

 return 0;
}
