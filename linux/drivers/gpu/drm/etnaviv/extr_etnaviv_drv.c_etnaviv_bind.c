
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_drm_private {struct drm_device* cmdbuf_suballoc; scalar_t__ num_gpus; int gem_list; int gem_lock; int dma_parms; } ;
struct drm_device {struct device* dev; struct etnaviv_drm_private* dev_private; } ;
struct device {int * dma_parms; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct drm_device*) ;
 int PTR_ERR (struct drm_device*) ;
 int SZ_2G ;
 int component_bind_all (struct device*,struct drm_device*) ;
 int component_unbind_all (struct device*,struct drm_device*) ;
 int dev_err (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct drm_device*) ;
 int dma_set_max_seg_size (struct device*,int ) ;
 struct drm_device* drm_dev_alloc (int *,struct device*) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_register (struct drm_device*,int ) ;
 int etnaviv_cmdbuf_suballoc_destroy (struct drm_device*) ;
 struct drm_device* etnaviv_cmdbuf_suballoc_new (struct device*) ;
 int etnaviv_drm_driver ;
 int kfree (struct etnaviv_drm_private*) ;
 struct etnaviv_drm_private* kzalloc (int,int ) ;
 int load_gpu (struct drm_device*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int etnaviv_bind(struct device *dev)
{
 struct etnaviv_drm_private *priv;
 struct drm_device *drm;
 int ret;

 drm = drm_dev_alloc(&etnaviv_drm_driver, dev);
 if (IS_ERR(drm))
  return PTR_ERR(drm);

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv) {
  dev_err(dev, "failed to allocate private data\n");
  ret = -ENOMEM;
  goto out_put;
 }
 drm->dev_private = priv;

 dev->dma_parms = &priv->dma_parms;
 dma_set_max_seg_size(dev, SZ_2G);

 mutex_init(&priv->gem_lock);
 INIT_LIST_HEAD(&priv->gem_list);
 priv->num_gpus = 0;

 priv->cmdbuf_suballoc = etnaviv_cmdbuf_suballoc_new(drm->dev);
 if (IS_ERR(priv->cmdbuf_suballoc)) {
  dev_err(drm->dev, "Failed to create cmdbuf suballocator\n");
  ret = PTR_ERR(priv->cmdbuf_suballoc);
  goto out_free_priv;
 }

 dev_set_drvdata(dev, drm);

 ret = component_bind_all(dev, drm);
 if (ret < 0)
  goto out_destroy_suballoc;

 load_gpu(drm);

 ret = drm_dev_register(drm, 0);
 if (ret)
  goto out_unbind;

 return 0;

out_unbind:
 component_unbind_all(dev, drm);
out_destroy_suballoc:
 etnaviv_cmdbuf_suballoc_destroy(priv->cmdbuf_suballoc);
out_free_priv:
 kfree(priv);
out_put:
 drm_dev_put(drm);

 return ret;
}
