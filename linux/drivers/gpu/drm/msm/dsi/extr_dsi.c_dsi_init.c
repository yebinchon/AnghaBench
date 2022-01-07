
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct msm_dsi {int id; struct platform_device* pdev; } ;


 int DBG (char*,struct msm_dsi*) ;
 int ENOMEM ;
 int ENXIO ;
 struct msm_dsi* ERR_PTR (int) ;
 int GFP_KERNEL ;
 struct msm_dsi* devm_kzalloc (int *,int,int ) ;
 int dsi_destroy (struct msm_dsi*) ;
 int dsi_get_phy (struct msm_dsi*) ;
 int msm_dsi_host_init (struct msm_dsi*) ;
 int msm_dsi_manager_register (struct msm_dsi*) ;
 int platform_set_drvdata (struct platform_device*,struct msm_dsi*) ;

__attribute__((used)) static struct msm_dsi *dsi_init(struct platform_device *pdev)
{
 struct msm_dsi *msm_dsi;
 int ret;

 if (!pdev)
  return ERR_PTR(-ENXIO);

 msm_dsi = devm_kzalloc(&pdev->dev, sizeof(*msm_dsi), GFP_KERNEL);
 if (!msm_dsi)
  return ERR_PTR(-ENOMEM);
 DBG("dsi probed=%p", msm_dsi);

 msm_dsi->id = -1;
 msm_dsi->pdev = pdev;
 platform_set_drvdata(pdev, msm_dsi);


 ret = msm_dsi_host_init(msm_dsi);
 if (ret)
  goto destroy_dsi;


 ret = dsi_get_phy(msm_dsi);
 if (ret)
  goto destroy_dsi;


 ret = msm_dsi_manager_register(msm_dsi);
 if (ret)
  goto destroy_dsi;

 return msm_dsi;

destroy_dsi:
 dsi_destroy(msm_dsi);
 return ERR_PTR(ret);
}
