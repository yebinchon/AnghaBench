
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct fsl_dcu_drm_device {int pix_clk; int clk; int drm; } ;


 int clk_disable_unprepare (int ) ;
 int clk_unregister (int ) ;
 int drm_dev_put (int ) ;
 int drm_dev_unregister (int ) ;
 struct fsl_dcu_drm_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int fsl_dcu_drm_remove(struct platform_device *pdev)
{
 struct fsl_dcu_drm_device *fsl_dev = platform_get_drvdata(pdev);

 drm_dev_unregister(fsl_dev->drm);
 drm_dev_put(fsl_dev->drm);
 clk_disable_unprepare(fsl_dev->clk);
 clk_unregister(fsl_dev->pix_clk);

 return 0;
}
