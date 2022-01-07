
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct omap_drm_private {int dummy; } ;


 int kfree (struct omap_drm_private*) ;
 int omapdrm_cleanup (struct omap_drm_private*) ;
 struct omap_drm_private* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int pdev_remove(struct platform_device *pdev)
{
 struct omap_drm_private *priv = platform_get_drvdata(pdev);

 omapdrm_cleanup(priv);
 kfree(priv);

 return 0;
}
