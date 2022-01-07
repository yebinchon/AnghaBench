
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_drm_private {int cmdbuf_suballoc; } ;
struct drm_device {struct etnaviv_drm_private* dev_private; } ;
struct device {int * dma_parms; } ;


 int component_unbind_all (struct device*,struct drm_device*) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unregister (struct drm_device*) ;
 int etnaviv_cmdbuf_suballoc_destroy (int ) ;
 int kfree (struct etnaviv_drm_private*) ;

__attribute__((used)) static void etnaviv_unbind(struct device *dev)
{
 struct drm_device *drm = dev_get_drvdata(dev);
 struct etnaviv_drm_private *priv = drm->dev_private;

 drm_dev_unregister(drm);

 component_unbind_all(dev, drm);

 dev->dma_parms = ((void*)0);

 etnaviv_cmdbuf_suballoc_destroy(priv->cmdbuf_suballoc);

 drm->dev_private = ((void*)0);
 kfree(priv);

 drm_dev_put(drm);
}
