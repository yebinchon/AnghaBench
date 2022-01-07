
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g2d_data {int drm_dev; int runqueue_work; int flags; } ;
struct exynos_drm_private {int * g2d_dev; } ;
struct drm_device {struct exynos_drm_private* dev_private; } ;
struct device {int dummy; } ;


 int G2D_BIT_SUSPEND_RUNQUEUE ;
 int cancel_work_sync (int *) ;
 struct g2d_data* dev_get_drvdata (struct device*) ;
 int exynos_drm_unregister_dma (int ,struct device*) ;
 int g2d_wait_finish (struct g2d_data*,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void g2d_unbind(struct device *dev, struct device *master, void *data)
{
 struct g2d_data *g2d = dev_get_drvdata(dev);
 struct drm_device *drm_dev = data;
 struct exynos_drm_private *priv = drm_dev->dev_private;


 set_bit(G2D_BIT_SUSPEND_RUNQUEUE, &g2d->flags);
 g2d_wait_finish(g2d, ((void*)0));
 priv->g2d_dev = ((void*)0);

 cancel_work_sync(&g2d->runqueue_work);
 exynos_drm_unregister_dma(g2d->drm_dev, dev);
}
