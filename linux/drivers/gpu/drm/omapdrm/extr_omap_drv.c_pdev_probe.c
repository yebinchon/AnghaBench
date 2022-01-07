
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct omap_drm_private {int dummy; } ;


 int DMA_BIT_MASK (int) ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 int dma_coerce_mask_and_coherent (int *,int ) ;
 int kfree (struct omap_drm_private*) ;
 struct omap_drm_private* kzalloc (int,int ) ;
 int omapdrm_init (struct omap_drm_private*,int *) ;
 int omapdss_is_initialized () ;
 int platform_set_drvdata (struct platform_device*,struct omap_drm_private*) ;

__attribute__((used)) static int pdev_probe(struct platform_device *pdev)
{
 struct omap_drm_private *priv;
 int ret;

 if (omapdss_is_initialized() == 0)
  return -EPROBE_DEFER;

 ret = dma_coerce_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
 if (ret) {
  dev_err(&pdev->dev, "Failed to set the DMA mask\n");
  return ret;
 }


 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 platform_set_drvdata(pdev, priv);

 ret = omapdrm_init(priv, &pdev->dev);
 if (ret < 0)
  kfree(priv);

 return ret;
}
