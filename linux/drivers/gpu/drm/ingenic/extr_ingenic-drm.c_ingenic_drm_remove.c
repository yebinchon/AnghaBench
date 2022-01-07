
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ingenic_drm {int drm; scalar_t__ pix_clk; scalar_t__ lcd_clk; } ;


 int clk_disable_unprepare (scalar_t__) ;
 int drm_atomic_helper_shutdown (int *) ;
 int drm_dev_unregister (int *) ;
 struct ingenic_drm* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int ingenic_drm_remove(struct platform_device *pdev)
{
 struct ingenic_drm *priv = platform_get_drvdata(pdev);

 if (priv->lcd_clk)
  clk_disable_unprepare(priv->lcd_clk);
 clk_disable_unprepare(priv->pix_clk);

 drm_dev_unregister(&priv->drm);
 drm_atomic_helper_shutdown(&priv->drm);

 return 0;
}
