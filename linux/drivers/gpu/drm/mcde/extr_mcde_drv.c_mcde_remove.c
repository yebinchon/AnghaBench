
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mcde {int epod; int vana; int mcde_clk; } ;
struct drm_device {struct mcde* dev_private; } ;


 int clk_disable_unprepare (int ) ;
 int component_master_del (int *,int *) ;
 int drm_dev_put (struct drm_device*) ;
 int mcde_drm_comp_ops ;
 struct drm_device* platform_get_drvdata (struct platform_device*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int mcde_remove(struct platform_device *pdev)
{
 struct drm_device *drm = platform_get_drvdata(pdev);
 struct mcde *mcde = drm->dev_private;

 component_master_del(&pdev->dev, &mcde_drm_comp_ops);
 clk_disable_unprepare(mcde->mcde_clk);
 regulator_disable(mcde->vana);
 regulator_disable(mcde->epod);
 drm_dev_put(drm);

 return 0;
}
